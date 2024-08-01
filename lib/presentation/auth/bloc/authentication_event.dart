part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent extends Equatable{
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