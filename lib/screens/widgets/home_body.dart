import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'app_list.dart';
import 'ram_bar.dart';
import 'loading_state.dart';
import 'error_state.dart';
import 'package:running_services_monitor/models/home_state_model.dart';

class HomeBody extends StatelessWidget {
  final TabController tabController;

  const HomeBody({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<
      HomeBloc,
      HomeState,
      ({bool isLoading, String? loadingMessage, bool isError, String? errorMessage, bool hasApps, HomeStateModel model})
    >(
      selector: (state) {
        final (isLoading, loadingMessage) = state.mapOrNull(loading: (s) => (true, s.message)) ?? (false, null);

        final (isError, errorMessage) = state.mapOrNull(failure: (s) => (true, s.message)) ?? (false, null);

        return (
          isLoading: isLoading,
          loadingMessage: loadingMessage,
          isError: isError,
          errorMessage: errorMessage,
          hasApps: state.value.allApps.isNotEmpty,
          model: state.value,
        );
      },
      builder: (context, data) {
        if (data.isLoading && !data.hasApps) {
          return LoadingState(status: data.loadingMessage);
        }

        if (data.isError && !data.hasApps) {
          return ErrorState(
            errorMessage: data.errorMessage ?? context.loc.error,
            onRetry: () => context.read<HomeBloc>().add(const HomeEvent.initializeShizuku()),
          );
        }

        final ram = (total: data.model.totalRamKb, used: data.model.usedRamKb, free: data.model.freeRamKb);

        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            if (ram.total <= 0) {
              return [];
            }
            return [
              SliverPersistentHeader(
                pinned: false,
                delegate: _RamBarDelegate(
                  ramBar: RamBar(totalRamKb: ram.total, usedRamKb: ram.used, freeRamKb: ram.free),
                ),
              ),
              SliverToBoxAdapter(child: Divider(height: 1.h)),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: [
              AppList(apps: data.model.allApps),
              AppList(apps: data.model.userApps),
              AppList(apps: data.model.systemApps),
            ],
          ),
        );
      },
    );
  }
}

class _RamBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget ramBar;

  _RamBarDelegate({required this.ramBar});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Theme.of(context).colorScheme.surface, child: ramBar);
  }

  @override
  double get maxExtent => 150.h;

  @override
  double get minExtent => 150.h;

  @override
  bool shouldRebuild(covariant _RamBarDelegate oldDelegate) {
    return ramBar != oldDelegate.ramBar;
  }
}
