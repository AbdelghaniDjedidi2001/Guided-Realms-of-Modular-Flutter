abstract class SessionProvider {
  String getSessionId();
  String getUserId();
  String getUserName();
  String getUserEmail();
  bool isLoggedIn();
  void logout();
}