import 'package:my_demo_app/app_config/environment_variables.dart';
import 'package:my_demo_app/main.dart';
import 'imports/common.dart';

void main() {
  AppEnvironments.setUpEnvironments(Environment.prod);
  mainDelegateForEnvironments();
}
