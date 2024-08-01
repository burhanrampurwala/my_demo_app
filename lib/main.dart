import 'package:flutter/material.dart';
import 'package:my_demo_app/common/resources/app_color.dart';

import 'app_config/environment_variables.dart';
import 'common/resources/route.dart';
import 'presentation/auth/page/login_view.dart';

Future<void> mainDelegateForEnvironments() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint("Env is ${AppEnvironments.environments}");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.colorPrimary),
        appBarTheme: AppBarTheme(color: AppColor.colorPrimary),
        useMaterial3: true,
      ),
      initialRoute: RouteName.routeSignIn,
      onGenerateRoute: Routes.getRoute,
    );
  }
}
