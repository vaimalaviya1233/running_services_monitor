import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/models/home_state_model.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'package:running_services_monitor/services/process_service.dart';
import 'package:running_services_monitor/services/shizuku_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ShizukuService _shizukuService;
  final ProcessService _processService;
  Timer? _autoUpdateTimer;

  HomeBloc(this._shizukuService, this._processService) : super(const HomeState.initial(HomeStateModel())) {
    on<_InitializeShizuku>(_onInitializeShizuku);
    on<_LoadData>(_onLoadData);
    on<_ToggleAutoUpdate>(_onToggleAutoUpdate);
    on<_ToggleSearch>(_onToggleSearch);
    on<_UpdateSearchQuery>(_onUpdateSearchQuery);
    on<_RemoveApp>(_onRemoveApp);

    on<_AutoUpdateTick>(_onAutoUpdateTick);
  }

  @override
  Future<void> close() {
    _autoUpdateTimer?.cancel();
    return super.close();
  }

  Future<void> _onInitializeShizuku(_InitializeShizuku event, Emitter<HomeState> emit) async {
    final isAlreadyReady = state.value.shizukuReady;

    if (!isAlreadyReady) {
      emit(HomeState.loading(state.value, 'Checking permissions...'));
    }

    try {
      final isRunning = await _shizukuService.isShizukuRunning();
      if (!isRunning) {
        emit(
          HomeState.failure(
            state.value.copyWith(shizukuReady: false),
            'Shizuku is not running. Please start Shizuku app.',
          ),
        );
        return;
      }

      final hasPermission = await _shizukuService.checkPermission();
      if (!hasPermission) {
        final granted = await _shizukuService.requestPermission();
        if (!granted) {
          emit(
            HomeState.failure(
              state.value.copyWith(shizukuReady: false),
              'Permission denied. Please grant Shizuku permission.',
            ),
          );
          return;
        }
      }

      final initialized = await _shizukuService.initialize();
      if (!initialized) {
        emit(
          HomeState.failure(
            state.value.copyWith(shizukuReady: false),
            'Failed to initialize Shizuku. Please grant permission.',
          ),
        );
        return;
      }

      emit(HomeState.success(state.value.copyWith(shizukuReady: true)));

      add(const HomeEvent.loadData());
    } catch (e) {
      emit(HomeState.failure(state.value.copyWith(shizukuReady: false), 'Error initializing Shizuku: $e'));
    }
  }

  Future<void> _onLoadData(_LoadData event, Emitter<HomeState> emit) async {
    emit(HomeState.loading(state.value, 'Loading apps...'));
    try {
      final Map<String, AppProcessInfo> appsMap = {};

      await for (final app in _processService.streamAppProcessInfos()) {
        appsMap[app.packageName] = app;

        final allApps = appsMap.values.toList();
        final userApps = allApps.where((a) => !a.isSystemApp).toList();
        final systemApps = allApps.where((a) => a.isSystemApp).toList();

        userApps.sort((a, b) => b.totalRamInKb.compareTo(a.totalRamInKb));
        systemApps.sort((a, b) => b.totalRamInKb.compareTo(a.totalRamInKb));

        double appsRam = 0;
        for (var appInfo in allApps) {
          appsRam += appInfo.totalRamInKb;
        }

        emit(
          HomeState.loading(
            state.value.copyWith(allApps: allApps, userApps: userApps, systemApps: systemApps, appsRamKb: appsRam),
          ),
        );
      }

      if (!event.silent) {
        final ramData = await _processService.getSystemRamInfo();
        final ramInfo = ramData.ramInfo;

        emit(
          HomeState.success(
            state.value.copyWith(
              totalRamKb: ramInfo?[0] ?? 0,
              freeRamKb: ramInfo?[1] ?? 0,
              usedRamKb: ramInfo?[2] ?? 0,
            ),
            'Refreshed successfully',
          ),
        );
      } else {
        emit(HomeState.success(state.value));
      }
    } catch (e) {
      if (!event.silent) {
        emit(HomeState.failure(state.value, 'Error loading data: $e'));
      }
    }
  }

  Future<void> _onToggleAutoUpdate(_ToggleAutoUpdate event, Emitter<HomeState> emit) async {
    final newAutoUpdateState = !state.value.isAutoUpdateEnabled;

    if (newAutoUpdateState) {
      _autoUpdateTimer = Timer.periodic(const Duration(seconds: 3), (_) {
        add(const HomeEvent.autoUpdateTick());
      });
    } else {
      _autoUpdateTimer?.cancel();
      _autoUpdateTimer = null;
    }

    emit(HomeState.success(state.value.copyWith(isAutoUpdateEnabled: newAutoUpdateState)));
  }

  Future<void> _onAutoUpdateTick(_AutoUpdateTick event, Emitter<HomeState> emit) async {
    add(const HomeEvent.loadData(silent: true));
  }

  Future<void> _onToggleSearch(_ToggleSearch event, Emitter<HomeState> emit) async {
    final newSearchState = !state.value.isSearching;

    emit(
      HomeState.success(
        state.value.copyWith(isSearching: newSearchState, searchQuery: newSearchState ? state.value.searchQuery : ''),
      ),
    );
  }

  Future<void> _onUpdateSearchQuery(_UpdateSearchQuery event, Emitter<HomeState> emit) async {
    emit(HomeState.success(state.value.copyWith(searchQuery: event.query)));
  }

  Future<void> _onRemoveApp(_RemoveApp event, Emitter<HomeState> emit) async {
    final currentState = state.value;
    final updatedAllApps = currentState.allApps.where((app) => app.packageName != event.packageName).toList();
    final updatedUserApps = currentState.userApps.where((app) => app.packageName != event.packageName).toList();
    final updatedSystemApps = currentState.systemApps.where((app) => app.packageName != event.packageName).toList();

    double appsRam = 0;
    for (var app in updatedAllApps) {
      appsRam += app.totalRamInKb;
    }

    emit(
      HomeState.success(
        currentState.copyWith(
          allApps: updatedAllApps,
          userApps: updatedUserApps,
          systemApps: updatedSystemApps,
          appsRamKb: appsRam,
        ),
      ),
    );
  }
}
