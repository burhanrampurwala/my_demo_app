import 'package:flutter/material.dart';
import 'package:my_demo_app/common/resources/app_strings.dart';
import '../../app_config/environment_variables.dart';
import '../../di/di.dart';
import '../../presentation/auth/page/login_view.dart';

class RouteName {
  static const String routeSignIn = '/';
}

class Routes {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    // final Arguments args = routeSettings.arguments as Arguments;
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case RouteName.routeSignIn:
        initAuthenticationModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppEnvironments.appName),
              ),
              body: const Center(
                child: Text(AppStrings.routName_defaultRoute_title),
              ),
            ));
  }
}
