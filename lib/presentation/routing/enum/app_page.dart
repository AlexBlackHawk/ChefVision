sealed class AppPage {
  const AppPage();

  String get name;

  String get path;
}

class _AppRoutes {
  static const home = 'home';
  static const meal = 'meal';
  static const detectedProducts = 'detected-products';
  static const subscriptions = 'subscriptions';
  static const subscriptionManaging = 'subscription-managing';
  static const camera = 'camera';

  static const homePath = '/home';
  static const mealPath = '/meal';
  static const detectedProductsPath = '/detected-products';
  static const subscriptionsPath = '/subscriptions';
  static const subscriptionManagingPath = '/subscription-managing';
  static const cameraPath = '/camera';
}

class _BasePageRoute extends AppPage {
  final String _name;
  final String _path;

  const _BasePageRoute(this._name, this._path);

  @override
  String get name => _name;

  @override
  String get path => _path;
}

const homePage = _BasePageRoute(_AppRoutes.home, _AppRoutes.homePath);
const mealPage = _BasePageRoute(_AppRoutes.meal, _AppRoutes.mealPath);
const detectedProductsPage = _BasePageRoute(_AppRoutes.detectedProducts, _AppRoutes.detectedProductsPath);
const subscriptionsPage = _BasePageRoute(_AppRoutes.subscriptions, _AppRoutes.subscriptionsPath);
const subscriptionManagingPage = _BasePageRoute(_AppRoutes.subscriptionManaging, _AppRoutes.subscriptionManagingPath);
const cameraPage = _BasePageRoute(_AppRoutes.camera, _AppRoutes.cameraPath);
