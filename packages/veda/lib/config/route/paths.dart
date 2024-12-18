import 'package:veda/config/route/route_model.dart';

/// [Paths] list of all routes
class Paths {
  static final RouteModel appStateObserver =
      RouteModel(routeName: 'appStateObserver', path: '/appStateObserver');
  static final RouteModel splashRoute =
      RouteModel(routeName: 'splash', path: '/splash');

  static final RouteModel onboardingScreenRoute = RouteModel(
      routeName: 'onboardingScreenRoute', path: '/onboardingScreenRoute');

  static final RouteModel homeScreenRoute =
      RouteModel(routeName: 'homeScreenRoute', path: '/homeScreenRoute');

  static final RouteModel loginScreenRoute =
      RouteModel(routeName: 'loginScreenRoute', path: '/loginScreenRoute');

  // welcomeScreen

  static final RouteModel welcomeScreenRoute =
      RouteModel(routeName: 'welcomeScreenRoute', path: '/welcomeScreenRoute');
  static final RouteModel newsFeedScreenRoute = RouteModel(
      routeName: 'newsFeedScreenRoute', path: '/newsFeedScreenRoute');
  static final RouteModel bottomNavBarScreen =
      RouteModel(routeName: 'bottomNavBarScreen', path: '/bottomNavBarScreen');
}
