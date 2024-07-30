import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          elevation: 5,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
