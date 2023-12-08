import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.g.dart';

@JsonSerializable()
class AuthRequest {
  final String? email;
  final String? password;

  AuthRequest({this.email, this.password});

  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
