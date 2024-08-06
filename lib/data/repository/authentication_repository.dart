import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../common/functions/exception_handler.dart';
import '../../di/di.dart';
import '../../services/share_preferences_services/authentication_data.dart';
import '../models/api_request_model/sign_in_request_model.dart';
import '../models/api_response_model/signed_in_user_response_model.dart';
import '../remote_data_services/auth_data_services.dart';

class AuthenticationRepository {
  // Function to handle user sign-in
  static Future<Either<Failure, TokenResponseModel>> signIn({
    required SignInRequestModel signInRequestModel,
  }) async {
      try {
        final authenticationData = instance<AuthenticationData>();

        final response = await AuthenticationDataService.signIn(
          signInRequestModel: signInRequestModel,
        );
        final responseJson = jsonDecode(response.body) as Map<String, dynamic>;
        final signInResponseModel = TokenResponseModel.fromJson(responseJson);

        if (response.statusCode == 200) {
          await authenticationData.setUserAuthToken(value: signInResponseModel.token);
          await authenticationData.hasUserActiveSession(value: true);
          // Add additional user data handling if needed

          return Right(signInResponseModel);
        } else {
          return Left(Failure(0, 'Error occurred', false));
        }
      } catch (error) {
        return Left(DataSource.FromBE.getFailure(message: error.toString()));
      }
  }
}
