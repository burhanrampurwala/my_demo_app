import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_demo_app/common/resources/app_strings.dart';
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';

import '../../../common/dimensions/paddings.dart';
import '../../../common/functions/text_feild_validation.dart';
import '../../../common/resources/app_color.dart';
import '../../../common/resources/enum.dart';
import '../../../common/resources/route.dart';
import '../../../common/resources/styles.dart';
import '../../../common/widgets/custom_loader.dart';
import '../../../common/widgets/custom_text_field.dart';
import '../../../common/widgets/toast.dart';
import '../../../di/di.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AuthenticationBloc _signInBloc = instance<AuthenticationBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorScaffold,
      body: BlocProvider(
        create: (context) => _signInBloc,
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state.message.isNotEmpty) {
              Toast.nullableIconToast(
                message: state.message,
                isErrorBooleanOrNull: state.isFailure ? true : false,
              );
              if (!state.isFailure) {
                Navigator.pushNamedAndRemoveUntil(
                    context, RouteName.routeSignIn, (route) => false);
              }
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return CustomLoader(child: buildBody(state));
            } else {
              return buildBody(state);
            }
          },
        ),
      ),
    );
  }

  buildBody(AuthenticationState state) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _signInBloc.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(bottom: widgetBottomPadding),
              child: CustomTextField(
                label: AppStrings.textfield_addEmail_text,
                isError: state.isEmailInvalid,
                focusNode: state.emailFocusNode,
                controller: state.emailController,
                hintText: AppStrings.textfield_addEmail_text,
                variant: TextFieldVariant.email,
                validator: (value) {
                  _signInBloc.add(TriggerFieldValidationEvent(
                      input: value!,
                      textFieldVariant: TextFieldVariant.email,
                      isPassword: null));
                  return validateEmail(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: widgetBottomPadding),
              child: CustomTextField(
                label: AppStrings.textfield_addPassword_text,
                filledColor: AppColor.colorPrimaryInverse,
                isError: state.isPasswordInvalid,
                focusNode: state.passwordFocusNode,
                controller: state.passwordController,
                hintText: AppStrings.textfield_addPassword_text,
                variant: TextFieldVariant.password,
                isObscureText: !state.isPasswordVisible,
                onTapPassword: () {
                  FocusScope.of(context).unfocus();
                  _signInBloc.add(TriggerPasswordVisibilityCheck(
                      isPasswordVisible: state.isPasswordVisible,
                      isPassword: true));
                },
                validator: (value) {
                  _signInBloc.add(TriggerFieldValidationEvent(
                      isPassword: true,
                      textFieldVariant: TextFieldVariant.password,
                      input: value!));

                  return validatePassword(value);
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                FocusScope.of(context)
                    .unfocus(); // Before validating form add this line is compulsory
                if (_signInBloc.formKey.currentState!.validate()) {
                  _signInBloc.add(TriggerEmailSignInRequest(
                      email: state.emailController.text,
                      password: state.passwordController.text));
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
