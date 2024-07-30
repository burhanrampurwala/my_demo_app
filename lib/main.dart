import 'package:flutter/material.dart';

import 'app_config/environment_variables.dart';
import 'presentation/auth/page/login_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
