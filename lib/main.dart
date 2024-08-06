import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_demo_app/common/resources/app_color.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app_config/environment_variables.dart';
import 'common/resources/route.dart';
import 'di/di.dart';

Future<void> mainDelegateForEnvironments() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  await ScreenUtil.ensureScreenSize();
  debugPrint("Env is ${AppEnvironments.environments}");
  runApp(const MyApp());
}

final botToastBuilder = BotToastInit();

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
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        child = botToastBuilder(context, child);
        return ResponsiveBreakpoints.builder(
          child: child,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        );
      },
      initialRoute: RouteName.routeSignIn,
      onGenerateRoute: Routes.getRoute,
    );
  }
}
