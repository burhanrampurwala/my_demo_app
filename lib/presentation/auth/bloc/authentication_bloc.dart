import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/resources/app_strings.dart';
import '../../../common/resources/enum.dart';
import '../../../usecase/sign_in_usecase.dart';
import 'authentication_handlers.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final SignInUseCase signInUseCase;

  AuthenticationBloc({required this.signInUseCase}) : super(AuthenticationState.initial()) {
    on<TriggerEmailSignInRequest>(_onTriggerEmailSignInRequest);
    on<TriggerFieldValidationEvent>(_onTriggerFieldValidationEvent);
    on<TriggerPasswordVisibilityCheck>(_onTriggerPasswordVisibilityCheck);
  }

  FutureOr<void> _onTriggerEmailSignInRequest(TriggerEmailSignInRequest event,
      Emitter<AuthenticationState> emit) async {
    await handleEmailSignInRequest(
        event: event, emit: emit, state: state, signInUseCase: signInUseCase);
  }

  FutureOr<void> _onTriggerFieldValidationEvent(
      TriggerFieldValidationEvent event, Emitter<AuthenticationState> emit) {
    handleFieldValidationEvent(
      event: event,
      emit: emit,
      state: state,
    );
  }

  FutureOr<void> _onTriggerPasswordVisibilityCheck(
      TriggerPasswordVisibilityCheck event, Emitter<AuthenticationState> emit) {
    handlePasswordVisibilityCheck(
      event: event,
      emit: emit,
      state: state,
    );
  }
}
