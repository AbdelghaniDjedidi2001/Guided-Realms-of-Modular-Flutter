import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:login/data/requests/login_request.dart';
import 'package:login/domain/models/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login(LoginRequest request);
}