import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'app_list_item.dart';

class AppList extends StatelessWidget {
  final List<AppProcessInfo> apps;

  const AppList({super.key, required this.apps});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, String>(
      selector: (state) => state.value.searchQuery,
      builder: (context, searchQuery) {
        final filteredApps = apps.where((app) {
          if (searchQuery.isEmpty) return true;
          final name = app.appName.toLowerCase();
          final pkg = app.packageName.toLowerCase();
          return name.contains(searchQuery) || pkg.contains(searchQuery);
        }).toList();

        Widget content;
        if (filteredApps.isEmpty) {
          content = LayoutBuilder(
            builder: (context, constraints) {
              return CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.inbox_outlined, size: 64, color: Theme.of(context).colorScheme.outline),
                          const SizedBox(height: 16),
                          Text(
                            searchQuery.isNotEmpty ? 'No matching apps' : 'No apps found',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          content = CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return AppListItem(appInfo: filteredApps[index]);
                }, childCount: filteredApps.length),
              ),
            ],
          );
        }

        return RefreshIndicator(
          onRefresh: () async {
            final homeBloc = context.read<HomeBloc>();
            final future = homeBloc.stream.firstWhere((state) => !state.value.isLoading);
            homeBloc.add(const HomeEvent.loadData());
            await future;
          },
          child: content,
        );
      },
    );
  }
}
