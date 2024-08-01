// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  String get message => throw _privateConstructorUsedError;
  bool get isRefresh => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  FocusNode get emailFocusNode => throw _privateConstructorUsedError;
  FocusNode get passwordFocusNode => throw _privateConstructorUsedError;
  bool get isPasswordInvalid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {String message,
      bool isRefresh,
      TextEditingController emailController,
      TextEditingController passwordController,
      FocusNode emailFocusNode,
      FocusNode passwordFocusNode,
      bool isPasswordInvalid});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isRefresh = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? emailFocusNode = null,
    Object? passwordFocusNode = null,
    Object? isPasswordInvalid = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailFocusNode: null == emailFocusNode
          ? _value.emailFocusNode
          : emailFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      isPasswordInvalid: null == isPasswordInvalid
          ? _value.isPasswordInvalid
          : isPasswordInvalid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      bool isRefresh,
      TextEditingController emailController,
      TextEditingController passwordController,
      FocusNode emailFocusNode,
      FocusNode passwordFocusNode,
      bool isPasswordInvalid});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isRefresh = null,
    Object? emailController = null,
    Object? passwordController = null,
    Object? emailFocusNode = null,
    Object? passwordFocusNode = null,
    Object? isPasswordInvalid = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isRefresh: null == isRefresh
          ? _value.isRefresh
          : isRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
      emailController: null == emailController
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: null == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      emailFocusNode: null == emailFocusNode
          ? _value.emailFocusNode
          : emailFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      passwordFocusNode: null == passwordFocusNode
          ? _value.passwordFocusNode
          : passwordFocusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      isPasswordInvalid: null == isPasswordInvalid
          ? _value.isPasswordInvalid
          : isPasswordInvalid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.message,
      required this.isRefresh,
      required this.emailController,
      required this.passwordController,
      required this.emailFocusNode,
      required this.passwordFocusNode,
      required this.isPasswordInvalid});

  @override
  final String message;
  @override
  final bool isRefresh;
  @override
  final TextEditingController emailController;
  @override
  final TextEditingController passwordController;
  @override
  final FocusNode emailFocusNode;
  @override
  final FocusNode passwordFocusNode;
  @override
  final bool isPasswordInvalid;

  @override
  String toString() {
    return 'AuthenticationState(message: $message, isRefresh: $isRefresh, emailController: $emailController, passwordController: $passwordController, emailFocusNode: $emailFocusNode, passwordFocusNode: $passwordFocusNode, isPasswordInvalid: $isPasswordInvalid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh) &&
            (identical(other.emailController, emailController) ||
                other.emailController == emailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.emailFocusNode, emailFocusNode) ||
                other.emailFocusNode == emailFocusNode) &&
            (identical(other.passwordFocusNode, passwordFocusNode) ||
                other.passwordFocusNode == passwordFocusNode) &&
            (identical(other.isPasswordInvalid, isPasswordInvalid) ||
                other.isPasswordInvalid == isPasswordInvalid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      isRefresh,
      emailController,
      passwordController,
      emailFocusNode,
      passwordFocusNode,
      isPasswordInvalid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required final String message,
      required final bool isRefresh,
      required final TextEditingController emailController,
      required final TextEditingController passwordController,
      required final FocusNode emailFocusNode,
      required final FocusNode passwordFocusNode,
      required final bool isPasswordInvalid}) = _$AuthenticationStateImpl;

  @override
  String get message;
  @override
  bool get isRefresh;
  @override
  TextEditingController get emailController;
  @override
  TextEditingController get passwordController;
  @override
  FocusNode get emailFocusNode;
  @override
  FocusNode get passwordFocusNode;
  @override
  bool get isPasswordInvalid;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
