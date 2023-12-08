import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_project_flutter/src/core/network/interfaces/base_model.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse extends BaseModel<AuthResponse> {
  final Tokens? tokens;
  final User? user;

  AuthResponse({this.tokens, this.user});

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  @override
  AuthResponse fromJson(Map<String, dynamic> json) =>
      AuthResponse.fromJson(json);
}

@JsonSerializable()
class Tokens extends BaseModel<Tokens> {
  final String? refreshToken;
  final String? accessToken;

  Tokens({this.refreshToken, this.accessToken});

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  @override
  Tokens fromJson(Map<String, dynamic> json) => Tokens.fromJson(json);
}

@JsonSerializable()
class User extends BaseModel<User> {
  final int? id;
  final String? email;
  final String? nickname;

  User({this.id, this.email, this.nickname});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);
}
