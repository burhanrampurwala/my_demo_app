import 'package:get_it/get_it.dart';

import '../presentation/auth/bloc/sign_in_bloc.dart';

final instance = GetIt.instance;

Future<void> initAuthenticationModule() async {
  if (!GetIt.I.isRegistered<SignInBloc>()) {
    instance.registerFactory<SignInBloc>(() => SignInBloc());
  }
} //For Sign-in screen
