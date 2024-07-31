
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';
import 'package:get_it/get_it.dart';



final instance = GetIt.instance;

Future<void> initAuthenticationModule() async {
  if (!GetIt.I.isRegistered<AuthenticationBloc>()) {
    instance.registerFactory<AuthenticationBloc>(() => AuthenticationBloc());
  }
} //For Sign-in screen
