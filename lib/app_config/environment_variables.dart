import '../imports/app_configuration.dart';
import '../imports/common.dart';

class AppEnvironments {
  static Map<String, dynamic>? information;
  static Environment? environments;

  static get baseUrl => information?[AppEnvironmentVariables.baseURL];

  static get appName => information?[AppEnvironmentVariables.appName];

  static get appTitle => information?[AppEnvironmentVariables.appTitle];

  static get debugBannerBoolean =>
      information?[AppEnvironmentVariables.debugBannerBoolean];

  static get iOSBundleID => information?[AppEnvironmentVariables.iOSBundleID];

  static void setUpEnvironments(Environment env) {
    switch (env) {
      case Environment.dev:
        information = AppEnvironmentVariables.dev;
        environments = Environment.dev;
        break;
      case Environment.prod:
        information = AppEnvironmentVariables.prod;
        environments = Environment.prod;
        break;
    }
  }
}
