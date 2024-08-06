import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_demo_app/common/resources/app_strings.dart';
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';

import '../../../common/functions/exception_handler.dart';
import '../../../common/functions/text_feild_validation.dart';
import '../../../common/resources/enum.dart';
import '../../../data/models/api_request_model/sign_in_request_model.dart';
import '../../../data/models/api_response_model/signed_in_user_response_model.dart';
import '../../../usecase/sign_in_usecase.dart';

void handleFieldValidationEvent({
  required TriggerFieldValidationEvent event,
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
}) async {
  emit(state.copyWith(
    message: '',
    isRefresh: true,
  ));
  if (event.textFieldVariant == TextFieldVariant.email) {
    _handleEmailValidation(event: event, emit: emit, state: state);
  } else if (event.textFieldVariant == TextFieldVariant.password) {
    _handlePasswordValidation(
      event: event,
      emit: emit,
      state: state,
    );
  }
}

void _handleEmailValidation({
  required TriggerFieldValidationEvent event,
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
}) {
  String? validationResult = validateEmail(event.input.trim().toLowerCase());
  emit(state.copyWith(
    isRefresh: false,
    isEmailInvalid: validationResult != null,
  ));
}

void _handlePasswordValidation({
  required TriggerFieldValidationEvent event,
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
}) {

  String? validationResult = validatePassword(event.input.trim().toLowerCase());
  emit(state.copyWith(
    isRefresh: false,
    isPasswordInvalid: validationResult != null,
  ));
}

void handlePasswordVisibilityCheck({
  required TriggerPasswordVisibilityCheck event,
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
}) {
  emit(state.copyWith(message: '', isFailure: false, isLoading: false));

  if (event.isPassword != null) {
    if (event.isPassword!) {
      _togglePasswordVisibility(
          emit: emit,
          state: state,
          isPasswordVisible: event.isPasswordVisible!);
    }
  }
}

void _togglePasswordVisibility({
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
  required bool isPasswordVisible,
}) {
  isPasswordVisible = !isPasswordVisible;
  emit(state.copyWith(
    isPasswordVisible: isPasswordVisible,
  ));
}

Future<void> handleEmailSignInRequest({
  required TriggerEmailSignInRequest event,
  required Emitter<AuthenticationState> emit,
  required AuthenticationState state,
  required SignInUseCase signInUseCase,

}) async {
  emit(state.copyWith(message: '', isFailure: false, isLoading: true));
  try {
    final response = await signInUseCase.execute(SignInRequestModel(
        email: event.email.trim().toLowerCase(),
        password: event.password.trim(),
      ));
    response.fold(
            (failure) => _handleSignViaEmailFailure(
            failure: failure, emit: emit, state: state),
            (success) => _handleSignViaEmailSuccess(
            emit: emit, state: state, success: success));
  } catch (e) {
    emit(state.copyWith(
        message: e.toString(), isFailure: true, isLoading: false));
  }
}

_handleSignViaEmailSuccess(
    {required Emitter<AuthenticationState> emit,
      required AuthenticationState state,
      required TokenResponseModel success}) {
  emit(state.copyWith(
      message: AppStrings.login_success_message,
      isFailure: false,
      isLoading: false));
}

_handleSignViaEmailFailure(
    {required Failure failure,
      required Emitter<AuthenticationState> emit,
      required AuthenticationState state}) {
  emit(state.copyWith(
      message: failure.message, isFailure: true, isLoading: false));
}
