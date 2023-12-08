// ignore_for_file: deprecated_member_use

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_project_flutter/src/core/logic/token_storage.dart';
import 'package:test_project_flutter/src/features/auth/api/model/requests/auth_request.dart';
import 'package:test_project_flutter/src/features/auth/api/model/responses/auth_response.dart';
import 'package:test_project_flutter/src/features/auth/repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.login(AuthRequest authRequest) = _AuthEventLogin;
}

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  // init state
  const factory AuthState.initial() = _InitialAuthState;

  // success state
  const factory AuthState.success({
    required AuthResponse authResponse,
  }) = _SuccessAuthState;

  // error in login state
  const factory AuthState.error({
    @Default('Произошла ошибка') String message,
  }) = _ErrorAuthState;

  const factory AuthState.inProgress() = _InProgressAuthState;

  /// getter for state progress
  bool get inProgress => maybeMap(
        orElse: () => false,
        inProgress: (_) => true,
      );

  /// getter for status login
  bool get inSuccess => maybeMap(
        orElse: () => false,
        success: (_) => true,
      );

  /// getter for state progress
  String get error => maybeMap(
        orElse: () => '',
      );
}

class AuthBLoC extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  final ITokenStorage _tokenStorage;
  AuthBLoC({
    required IAuthRepository authRepository,
    required ITokenStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (AuthEvent event, Emitter<AuthState> emit) => event.map(
        login: (event) => _login(event, emit),
      ),
    );
  }

  Future<void> _login(_AuthEventLogin event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.inProgress());

      /// Запрос на сервер
      final result =
          await _authRepository.login(authRequest: event.authRequest);

      /// Парсим результат запроса
      await result.when(
        success: (AuthResponse response) async {
          await _tokenStorage.saveToken(
            response.tokens?.accessToken ?? '',
          );
          await _tokenStorage.saveRefreshToken(
            response.tokens?.refreshToken ?? '',
          );
          await _tokenStorage.saveNickName(
            response.user?.nickname ?? '',
          );
          await _tokenStorage.saveUserEmail(
            response.user?.email ?? '',
          );
          await _tokenStorage.saveUserID(
            response.user?.id ?? 0,
          );
          emit(
            AuthState.success(
              authResponse: response,
            ),
          );
        },
        failure: (error) {
          emit(
            AuthState.error(
              message: error.msg ?? 'Ошибка авторизации',
            ),
          );
        },
      );
    } on Object {
      emit(const AuthState.error(message: 'Ошибка авторизации'));
      rethrow;
    }
  }
}
