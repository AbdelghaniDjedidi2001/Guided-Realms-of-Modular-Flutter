import 'package:dio/dio.dart';
import 'package:login/responses/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'login_service.g.dart';


const String _baseUrl = 'https://minafarid.mocklab.io';

@RestApi(baseUrl: _baseUrl)
abstract class LoginService {
  factory LoginService(Dio dio, {required String baseUrl}) = _LoginService;


  @POST('/customers/login')
  Future<HttpResponse<LoginResponse>> login(
    @Field('email') String email,
    @Field('password') String password,
  );
}