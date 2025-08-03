import 'package:login/data/requests/login_request.dart';
import 'package:login/data/responses/login_response.dart';
import 'package:retrofit/retrofit.dart';

abstract class LoginRemoteDataSource {
  Future<HttpResponse<LoginResponse>> login(LoginRequest request);
}
