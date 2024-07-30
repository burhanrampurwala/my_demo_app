
class AppEnvironmentVariables{
  static const baseURL = "base-url";
  static const appName = "app-name";
  static const appTitle = "app-title";
  static const debugBannerBoolean = "debug-banner-boolean";
  static const iOSBundleID = "iOSBundleID";

  //make necessary changes
  static Map<String, dynamic> dev = {
    baseURL: "https://reqres.in/api",
    appName:'Demo App Dev',
    debugBannerBoolean: true,
    appTitle: 'Demo App Dev',
    iOSBundleID: 'com.vitecvisual.fluttertemplates.dev'
  };

  //make necessary changes
  static Map<String, dynamic> prod = {
    baseURL: "https://reqres.in/api",
    appName:'Demo App',
    debugBannerBoolean: false,
    appTitle: 'Demo App',
    iOSBundleID: 'com.vitecvisual.fluttertemplates'
  };
}