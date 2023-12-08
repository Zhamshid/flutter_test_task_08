import 'package:test_project_flutter/src/core/network/result.dart';
import 'package:test_project_flutter/src/features/auth/api/model/requests/auth_request.dart';
import 'package:test_project_flutter/src/features/auth/api/model/responses/auth_response.dart';

abstract class IAuthRepository {
  // login requests
  Future<Result<AuthResponse>> login({required AuthRequest authRequest});
}
