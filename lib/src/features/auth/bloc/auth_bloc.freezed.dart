// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  AuthRequest get authRequest => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRequest authRequest) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest authRequest)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRequest authRequest)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({AuthRequest authRequest});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = null,
  }) {
    return _then(_value.copyWith(
      authRequest: null == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as AuthRequest,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthEventLoginCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthEventLoginCopyWith(
          _$_AuthEventLogin value, $Res Function(_$_AuthEventLogin) then) =
      __$$_AuthEventLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthRequest authRequest});
}

/// @nodoc
class __$$_AuthEventLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventLogin>
    implements _$$_AuthEventLoginCopyWith<$Res> {
  __$$_AuthEventLoginCopyWithImpl(
      _$_AuthEventLogin _value, $Res Function(_$_AuthEventLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = null,
  }) {
    return _then(_$_AuthEventLogin(
      null == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as AuthRequest,
    ));
  }
}

/// @nodoc

class _$_AuthEventLogin extends _AuthEventLogin {
  const _$_AuthEventLogin(this.authRequest) : super._();

  @override
  final AuthRequest authRequest;

  @override
  String toString() {
    return 'AuthEvent.login(authRequest: $authRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventLogin &&
            (identical(other.authRequest, authRequest) ||
                other.authRequest == authRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventLoginCopyWith<_$_AuthEventLogin> get copyWith =>
      __$$_AuthEventLoginCopyWithImpl<_$_AuthEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRequest authRequest) login,
  }) {
    return login(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest authRequest)? login,
  }) {
    return login?.call(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRequest authRequest)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventLogin value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventLogin value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventLogin value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthEventLogin extends AuthEvent {
  const factory _AuthEventLogin(final AuthRequest authRequest) =
      _$_AuthEventLogin;
  const _AuthEventLogin._() : super._();

  @override
  AuthRequest get authRequest;
  @override
  @JsonKey(ignore: true)
  _$$_AuthEventLoginCopyWith<_$_AuthEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthResponse authResponse) success,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthResponse authResponse)? success,
    TResult? Function(String message)? error,
    TResult? Function()? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthResponse authResponse)? success,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_SuccessAuthState value) success,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_SuccessAuthState value)? success,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_InProgressAuthState value)? inProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_SuccessAuthState value)? success,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialAuthStateCopyWith<$Res> {
  factory _$$_InitialAuthStateCopyWith(
          _$_InitialAuthState value, $Res Function(_$_InitialAuthState) then) =
      __$$_InitialAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InitialAuthState>
    implements _$$_InitialAuthStateCopyWith<$Res> {
  __$$_InitialAuthStateCopyWithImpl(
      _$_InitialAuthState _value, $Res Function(_$_InitialAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialAuthState extends _InitialAuthState {
  const _$_InitialAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthResponse authResponse) success,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthResponse authResponse)? success,
    TResult? Function(String message)? error,
    TResult? Function()? inProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthResponse authResponse)? success,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_SuccessAuthState value) success,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_SuccessAuthState value)? success,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_InProgressAuthState value)? inProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_SuccessAuthState value)? success,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthState extends AuthState {
  const factory _InitialAuthState() = _$_InitialAuthState;
  const _InitialAuthState._() : super._();
}

/// @nodoc
abstract class _$$_SuccessAuthStateCopyWith<$Res> {
  factory _$$_SuccessAuthStateCopyWith(
          _$_SuccessAuthState value, $Res Function(_$_SuccessAuthState) then) =
      __$$_SuccessAuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponse authResponse});
}

/// @nodoc
class __$$_SuccessAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SuccessAuthState>
    implements _$$_SuccessAuthStateCopyWith<$Res> {
  __$$_SuccessAuthStateCopyWithImpl(
      _$_SuccessAuthState _value, $Res Function(_$_SuccessAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = null,
  }) {
    return _then(_$_SuccessAuthState(
      authResponse: null == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }
}

/// @nodoc

class _$_SuccessAuthState extends _SuccessAuthState {
  const _$_SuccessAuthState({required this.authResponse}) : super._();

  @override
  final AuthResponse authResponse;

  @override
  String toString() {
    return 'AuthState.success(authResponse: $authResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAuthState &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessAuthStateCopyWith<_$_SuccessAuthState> get copyWith =>
      __$$_SuccessAuthStateCopyWithImpl<_$_SuccessAuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthResponse authResponse) success,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
  }) {
    return success(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthResponse authResponse)? success,
    TResult? Function(String message)? error,
    TResult? Function()? inProgress,
  }) {
    return success?.call(authResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthResponse authResponse)? success,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(authResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_SuccessAuthState value) success,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_SuccessAuthState value)? success,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_InProgressAuthState value)? inProgress,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_SuccessAuthState value)? success,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessAuthState extends AuthState {
  const factory _SuccessAuthState({required final AuthResponse authResponse}) =
      _$_SuccessAuthState;
  const _SuccessAuthState._() : super._();

  AuthResponse get authResponse;
  @JsonKey(ignore: true)
  _$$_SuccessAuthStateCopyWith<_$_SuccessAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorAuthStateCopyWith<$Res> {
  factory _$$_ErrorAuthStateCopyWith(
          _$_ErrorAuthState value, $Res Function(_$_ErrorAuthState) then) =
      __$$_ErrorAuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_ErrorAuthState>
    implements _$$_ErrorAuthStateCopyWith<$Res> {
  __$$_ErrorAuthStateCopyWithImpl(
      _$_ErrorAuthState _value, $Res Function(_$_ErrorAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorAuthState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAuthState extends _ErrorAuthState {
  const _$_ErrorAuthState({this.message = 'Произошла ошибка'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorAuthState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorAuthStateCopyWith<_$_ErrorAuthState> get copyWith =>
      __$$_ErrorAuthStateCopyWithImpl<_$_ErrorAuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthResponse authResponse) success,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthResponse authResponse)? success,
    TResult? Function(String message)? error,
    TResult? Function()? inProgress,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthResponse authResponse)? success,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_SuccessAuthState value) success,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_SuccessAuthState value)? success,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_InProgressAuthState value)? inProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_SuccessAuthState value)? success,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthState extends AuthState {
  const factory _ErrorAuthState({final String message}) = _$_ErrorAuthState;
  const _ErrorAuthState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorAuthStateCopyWith<_$_ErrorAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressAuthStateCopyWith<$Res> {
  factory _$$_InProgressAuthStateCopyWith(_$_InProgressAuthState value,
          $Res Function(_$_InProgressAuthState) then) =
      __$$_InProgressAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProgressAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InProgressAuthState>
    implements _$$_InProgressAuthStateCopyWith<$Res> {
  __$$_InProgressAuthStateCopyWithImpl(_$_InProgressAuthState _value,
      $Res Function(_$_InProgressAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProgressAuthState extends _InProgressAuthState {
  const _$_InProgressAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProgressAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AuthResponse authResponse) success,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AuthResponse authResponse)? success,
    TResult? Function(String message)? error,
    TResult? Function()? inProgress,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AuthResponse authResponse)? success,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_SuccessAuthState value) success,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_SuccessAuthState value)? success,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_InProgressAuthState value)? inProgress,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_SuccessAuthState value)? success,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressAuthState extends AuthState {
  const factory _InProgressAuthState() = _$_InProgressAuthState;
  const _InProgressAuthState._() : super._();
}
