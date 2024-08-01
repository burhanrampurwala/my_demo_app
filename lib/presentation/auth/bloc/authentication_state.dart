part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required String message,
    required bool isRefresh,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required FocusNode emailFocusNode,
    required FocusNode passwordFocusNode,
    required bool isPasswordInvalid,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() =>  AuthenticationState(
        message: '',
        isRefresh: false,
        emailController: TextEditingController(),
        emailFocusNode: FocusNode(),
        passwordController: TextEditingController(),
        passwordFocusNode: FocusNode(),
        isPasswordInvalid: false,
      );
}
