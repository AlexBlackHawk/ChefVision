import 'package:chefvision/subscription/bloc/subscription_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_repository/meal_repository.dart';
import 'package:subscription_repository/subscription_repository.dart';

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

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChefVision',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
