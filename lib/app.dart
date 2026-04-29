import 'package:chefvision/presentation/routing/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppView();
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
