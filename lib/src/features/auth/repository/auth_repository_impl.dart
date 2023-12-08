import 'package:test_project_flutter/src/core/network/layers/network_executer.dart';
import 'package:test_project_flutter/src/core/network/result.dart';
import 'package:test_project_flutter/src/features/auth/api/api/auth_api.dart';
import 'package:test_project_flutter/src/features/auth/api/model/requests/auth_request.dart';
import 'package:test_project_flutter/src/features/auth/api/model/responses/auth_response.dart';
import 'package:test_project_flutter/src/features/auth/repository/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final NetworkExecuter client;
  AuthRepositoryImpl({required this.client});

  @override
  Future<Result<AuthResponse>> login({
    required AuthRequest authRequest,
  }) =>
      client.execute(
        route: AuthApi.login(request: authRequest),
        responseType: AuthResponse(),
      );
}
