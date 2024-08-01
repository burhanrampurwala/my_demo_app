import 'package:flutter/material.dart';
import 'package:my_demo_app/common/resources/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_demo_app/common/resources/app_strings.dart';
import 'package:my_demo_app/common/resources/styles.dart';
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AuthenticationBloc authenticationBloc = AuthenticationBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => authenticationBloc,
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {},
          child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text(
                    AppStrings.authentication_signin_title,
                    // style: Style.appBarTitleStyle(color: AppColor.colorPrimaryInverse),
                  ),
                  centerTitle: true,
                ),
                body: buildBody(state),
              );
            },
          ),
        ));
  }

  buildBody(AuthenticationState state) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: state.emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter your email';
            //   }
            //   final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            //   if (!emailRegex.hasMatch(value)) {
            //     return 'Please enter a valid email address';
            //   }
            //   return null;
            // },
          ),
          const SizedBox(height: 26),
          TextFormField(
            controller: state.passwordController,
            // obscureText: _obscurePassword,
            decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.visibility_off,
                ),
                onPressed: () {},
              ),
            ),
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter your password';
            //   }
            //   if (value.length < 6) {
            //     return 'Password must be at least 6 characters long';
            //   }
            //   return null;
            // },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
