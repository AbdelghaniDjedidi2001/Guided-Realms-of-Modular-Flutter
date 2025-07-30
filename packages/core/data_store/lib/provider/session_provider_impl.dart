import 'package:data_store/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl extends SessionProvider {
  @override
  String getSessionId() {
    return 'prod-session-id';
  }

  @override
  String getUserEmail() {
    return 'prod-user-email';
  }

  @override
  String getUserId() {
    return 'prod-user-id';
  }

  @override
  String getUserName() {
    return 'prod-user-name';
  }

  @override
  bool isLoggedIn() {
    return true;
  }

  @override
  void logout() {
    print('User logged out from production environment');
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl extends SessionProvider {
  @override
  String getSessionId() {
    return 'dev-session-id';
  }

  @override
  String getUserEmail() {
    return 'dev-user-email';
  }

  @override
  String getUserId() {
    return 'dev-user-id';
  }

  @override
  String getUserName() {
    return 'dev-user-name';
  }

  @override
  bool isLoggedIn() {
    return false;
  }

  @override
  void logout() {
    print('User logged out from development environment');
  }
}
