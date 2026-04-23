import 'package:chefvision/presentation/pages/camera/camera.dart';
import 'package:chefvision/presentation/pages/detected_products/detected_products.dart';
import 'package:chefvision/presentation/pages/home/home.dart';
import 'package:chefvision/presentation/pages/meal/meal.dart';
import 'package:chefvision/presentation/pages/subscription_managing/subscription_managing.dart';
import 'package:chefvision/presentation/pages/subscriptions/subscriptions.dart';
import 'package:chefvision/presentation/routing/enum/app_page.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> buildAppRoutes() => [
  GoRoute(
    path: homePage.path,
    name: homePage.name,
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: mealPage.path,
    name: mealPage.name,
    builder: (context, state) => MealPage(),
  ),
  GoRoute(
    path: detectedProductsPage.path,
    name: detectedProductsPage.name,
    builder: (context, state) => DetectedProductsPage(),
  ),
  GoRoute(
    path: subscriptionsPage.path,
    name: subscriptionsPage.name,
    builder: (context, state) => SubscriptionsPage(),
  ),
  GoRoute(
    path: subscriptionManagingPage.path,
    name: subscriptionManagingPage.name,
    builder: (context, state) => SubscriptionManagingPage(),
  ),
  GoRoute(
    path: cameraPage.path,
    name: cameraPage.name,
    builder: (context, state) => CameraPage(),
  ),
];
