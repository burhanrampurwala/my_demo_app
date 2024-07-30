import 'package:my_demo_app/main.dart';
import 'app_config/environment_variables.dart';
import 'imports/common.dart';

void main() {
  AppEnvironments.setUpEnvironments(Environment.dev);
  mainDelegateForEnvironments();
}
