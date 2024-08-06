
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/share_preferences_services/authentication_data.dart';



final instance = GetIt.instance;

Future<void> initAppModule() async {
  SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  instance.registerLazySingleton<AuthenticationData>(
          () => AuthenticationData(instance()));

}

Future<void> initAuthenticationModule() async {
  if (!GetIt.I.isRegistered<AuthenticationBloc>()) {
    instance.registerFactory<AuthenticationBloc>(() => AuthenticationBloc());
  }
} //For Sign-in screen
