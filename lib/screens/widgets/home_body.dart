import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'package:running_services_monitor/l10n/app_localizations.dart';
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
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text(AppLocalizations.of(context)!.loadingServices),
              ],
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
                    label: Text(AppLocalizations.of(context)!.retry),
                  ),
                ],
              ),
            ),
          );
        }

        // Success state
        return BlocSelector<HomeBloc, HomeState, ({double total, double used, double apps, double free})>(
          selector: (state) => (
            total: state.value.totalRamKb,
            used: state.value.usedRamKb,
            apps: state.value.appsRamKb,
            free: state.value.freeRamKb,
          ),
          builder: (context, ram) {
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _RamBarDelegate(
                      ramBar: RamBar(
                        totalRamKb: ram.total,
                        usedRamKb: ram.used,
                        appsRamKb: ram.apps,
                        freeRamKb: ram.free,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(child: Divider(height: 1)),
                ];
              },
              body:
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
            );
          },
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
  double get maxExtent => 195; // Adjusted for actual RamBar height with padding

  @override
  double get minExtent => 195; // Keep it the same size when pinned

  @override
  bool shouldRebuild(covariant _RamBarDelegate oldDelegate) {
    return ramBar != oldDelegate.ramBar;
  }
}
