// ignore_for_file: avoid-dynamic, comment_references
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_clien_generator.dart';
import 'package:test_project_flutter/src/features/auth/api/model/requests/auth_request.dart';

part 'auth_api.freezed.dart';

@freezed
class AuthApi extends BaseClientGenerator with _$AuthApi {
  const AuthApi._() : super();

  /// Запрос для авторизации
  const factory AuthApi.login({required AuthRequest request}) = _Login;

  /// Здесь описываются body для всех запросов
  /// По умолчанию null
  @override
  dynamic get body => whenOrNull(
        login: (AuthRequest request) => request.toJson(),
      );

  /// Используемые методы запросов, по умолчанию 'GET'
  @override
  String get method => maybeWhen(
        orElse: () => 'GET',
        login: (_) => 'POST',
      );

  /// Пути всех запросов (после [kBaseUrl])
  @override
  String get path => when(
        login: (_) => '/auth/login',
      );

  /// Параметры запросов
  @override
  Map<String, dynamic>? get queryParameters => maybeWhen(orElse: () => null);
}
