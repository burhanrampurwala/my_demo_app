

import 'package:dartz/dartz.dart';
import 'package:my_demo_app/data/models/api_response_model/signed_in_user_response_model.dart';
import 'package:my_demo_app/usecase/base_usecase.dart';

import '../common/functions/exception_handler.dart';
import '../data/models/api_request_model/sign_in_request_model.dart';
import '../data/repository/authentication_repository.dart';

class SignInUseCase extends BaseUseCase<SignInRequestModel, TokenResponseModel> {
  @override
  Future<Either<Failure, TokenResponseModel>> execute(SignInRequestModel input) {
    return AuthenticationRepository.signIn(signInRequestModel: input);
  }
}