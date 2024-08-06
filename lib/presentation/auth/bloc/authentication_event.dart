part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object?> get props => [];
}

class TriggerEmailSignInRequest extends AuthenticationEvent {
  final String email;
  final String password;

  const TriggerEmailSignInRequest(
      {required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class TriggerFieldValidationEvent extends AuthenticationEvent {
  final String input;
  final TextFieldVariant textFieldVariant;
  final bool? isPassword;

  const TriggerFieldValidationEvent(
      {required this.textFieldVariant,
      required this.input,
      required this.isPassword});

  @override
  List<Object?> get props => [input, textFieldVariant, isPassword];
}

class TriggerPasswordVisibilityCheck extends AuthenticationEvent {
  final bool? isPassword;
  final bool? isPasswordVisible;

  const TriggerPasswordVisibilityCheck(
      {required this.isPassword, required this.isPasswordVisible});

  @override
  List<Object?> get props => [isPassword, isPasswordVisible];
}
