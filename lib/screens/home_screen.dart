import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/core/theme/theme_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/screens/about_screen.dart';
import 'widgets/shizuku_setup_dialog.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final HomeBloc homeBloc;

  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  int _refreshCount = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Initialize BLoCs
    homeBloc = getIt<HomeBloc>();

    // Listen to search controller
    _searchController.addListener(() {
      homeBloc.add(HomeEvent.updateSearchQuery(_searchController.text.toLowerCase()));
    });

    // Initialize Shizuku
    homeBloc.add(const HomeEvent.initializeShizuku());
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    homeBloc.close();
    super.dispose();
  }

  void _showShizukuSetupDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => ShizukuSetupDialog(
        onRetry: () {
          Navigator.of(context).pop();
          homeBloc.add(const HomeEvent.initializeShizuku());
        },
      ),
    );
  }

  void _checkReviewRequest() {
    _refreshCount++;
    if (_refreshCount % 5 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Enjoying the app? Consider buying me a coffee!'),
          action: SnackBarAction(
            label: 'Donate',
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AboutScreen())),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: homeBloc)],
      child: BlocListener<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.value.errorMessage != current.value.errorMessage ||
            previous.value.notification != current.value.notification,
        listener: (context, state) {
          // Handle one-time side effects
          state.maybeWhen(
            failure: (value, message) {
              // Show Shizuku setup dialog if needed
              if (message.contains('Shizuku is not running')) {
                _showShizukuSetupDialog();
              }
            },
            success: (value) {
              if (value.notification != null) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value.notification!),
                    duration: const Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                _checkReviewRequest();
              }
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight + 48), // Approximate height including TabBar
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                final value = state.value;
                return AppBar(
                  title: value.isSearching
                      ? TextField(
                          controller: _searchController,
                          autofocus: true,
                          decoration: const InputDecoration(
                            hintText: 'Search apps...',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                          style: const TextStyle(color: Colors.white),
                        )
                      : Image.asset(
                          'assets/splash.png',
                          width: 32,
                          height: 32,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                  bottom: value.shizukuReady
                      ? PreferredSize(
                          preferredSize: const Size.fromHeight(48),
                          child: TabBar(
                            controller: _tabController,
                            tabs: [
                              Tab(text: 'All (${value.allApps.length})'),
                              Tab(text: 'User (${value.userApps.length})'),
                              Tab(text: 'System (${value.systemApps.length})'),
                            ],
                          ),
                        )
                      : null,
                  actions: [
                    if (value.shizukuReady) ...[
                      IconButton(
                        icon: Icon(value.isSearching ? Icons.close : Icons.search),
                        onPressed: () {
                          if (!value.isSearching) {
                            homeBloc.add(const HomeEvent.toggleSearch());
                          } else {
                            _searchController.clear();
                            homeBloc.add(const HomeEvent.toggleSearch());
                          }
                        },
                        tooltip: value.isSearching ? 'Close Search' : 'Search',
                      ),
                      IconButton(
                        icon: Icon(
                          value.isAutoUpdateEnabled ? Icons.timer : Icons.timer_off,
                          color: value.isAutoUpdateEnabled ? Theme.of(context).colorScheme.primary : null,
                        ),
                        onPressed: () => homeBloc.add(const HomeEvent.toggleAutoUpdate()),
                        tooltip: 'Auto-Update (3s)',
                      ),
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        onPressed: value.isLoading ? null : () => homeBloc.add(const HomeEvent.loadData()),
                        tooltip: 'Refresh',
                      ),
                    ],
                    IconButton(
                      icon: Icon(Theme.of(context).brightness == Brightness.dark ? Icons.light_mode : Icons.dark_mode),
                      onPressed: () => context.read<ThemeBloc>().toggleTheme(),
                      tooltip: 'Toggle Theme',
                    ),
                    IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AboutScreen())),
                      tooltip: 'About',
                    ),
                  ],
                );
              },
            ),
          ),
          body: HomeBody(tabController: _tabController),
        ),
      ),
    );
  }
}
