import 'package:platform_info/platform_info.dart';

/// Окружение, например:
/// + development
/// + integration
/// + testing
/// + staging
/// + production
String get environment => _kEnvironment.isEmpty
    ? platform.buildMode.when<String>(
        debug: () => 'dev',
        profile: () => 'dev',
        release: () => 'prod',
      )
    : _kEnvironment;

bool get isProd => environment == 'prod';

/// Окуржение переданное при билде,
/// если пустой будут использоватья значения сверху
const String _kEnvironment = String.fromEnvironment('env');

/// Sentry DSN
final String kSentryDsn = isProd ? 'prodDsn' : '';

/// Основная API
final String kBaseUrl = isProd
    ? 'http://45.10.110.181:8080/api/v1'
    : 'http://45.10.110.181:8080/api/v1'; /// Здесь должно быт дев API
