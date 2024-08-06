

import '../../di/di.dart';
import '../../services/share_preferences_services/authentication_data.dart';

class RepositoryDependencies{
  static final AuthenticationData authenticationRecord = instance<AuthenticationData>();
}