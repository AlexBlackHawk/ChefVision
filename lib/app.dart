import 'package:chefvision/presentation/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final SubscriptionRepository _subscriptionRepository;

  @override
  void initState() {
    _subscriptionRepository = const SubscriptionRepository();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<MealRepository>(
          create: (context) => MealRepository(),
        ),
        RepositoryProvider.value(value: _subscriptionRepository),
      ],
      child: BlocProvider(
        create: (context) => SubscriptionBloc(subscriptionRepository: _subscriptionRepository)..add(const SubscriptionCustomerInitialized())..add(const SubscriptionPackagesFetched()),
        child: const AppView(),
      ),
    );
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter appRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: splashScreenPage.path,
      routes: buildAppRoutes(),
    );

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'ChefVision',
      theme: ThemeData(
        useMaterial3: true,
      ),
      builder: (context, child) => Container(),
    );
  }
}
