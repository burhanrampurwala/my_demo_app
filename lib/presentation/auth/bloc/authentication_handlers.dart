import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_demo_app/presentation/auth/bloc/authentication_bloc.dart';

import '../../../common/functions/text_feild_validation.dart';
import '../../../common/resources/enum.dart';

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
