import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'app_list.dart';
import 'ram_bar.dart';

class HomeBody extends StatelessWidget {
  final TabController tabController;

  const HomeBody({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final value = state.value;
        final homeBloc = context.read<HomeBloc>();

        // Loading state (initial load)
        if (value.isLoading && value.allApps.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator(), SizedBox(height: 16), Text('Loading services...')],
            ),
          );
        }

        // Error state (no data)
        if (value.errorMessage != null && value.allApps.isEmpty) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: Theme.of(context).colorScheme.error),
                  const SizedBox(height: 16),
                  Text(value.errorMessage!, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => homeBloc.add(const HomeEvent.initializeShizuku()),
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            ),
          );
        }

        // Success state
        return Column(
          children: [
            // RAM Bar
            BlocSelector<HomeBloc, HomeState, ({double total, double used, double apps, double free})>(
              selector: (state) => (
                total: state.value.totalRamKb,
                used: state.value.usedRamKb,
                apps: state.value.appsRamKb,
                free: state.value.freeRamKb,
              ),
              builder: (context, ram) {
                return RamBar(totalRamKb: ram.total, usedRamKb: ram.used, appsRamKb: ram.apps, freeRamKb: ram.free);
              },
            ),
            const Divider(height: 1),
            // App List
            Expanded(
              child:
                  BlocSelector<
                    HomeBloc,
                    HomeState,
                    ({List<AppProcessInfo> all, List<AppProcessInfo> user, List<AppProcessInfo> system})
                  >(
                    selector: (state) =>
                        (all: state.value.allApps, user: state.value.userApps, system: state.value.systemApps),
                    builder: (context, apps) {
                      return TabBarView(
                        controller: tabController,
                        children: [
                          AppList(apps: apps.all),
                          AppList(apps: apps.user),
                          AppList(apps: apps.system),
                        ],
                      );
                    },
                  ),
            ),
          ],
        );
      },
    );
  }
}
