import 'dart:io';

import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final String baseUrl;
  final String token;
  final String clientId;
  final String userAgent;
  final String language;

  DioFactory({
    required this.baseUrl,
    required this.token,
    required this.clientId,
    this.userAgent = 'YourAppName/1.0',
    this.language = 'en',
  });

  Future<Dio> getDio() async {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: _buildHeaders(),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
        ),
      );
    }

    return dio;
  }

  Map<String, dynamic> _buildHeaders() {
    return {
      HttpHeaders.contentTypeHeader: applicationJson,
      HttpHeaders.acceptHeader: accept,
      HttpHeaders.authorizationHeader: 'Bearer $token',
      defaultLanguage: language,
      HttpHeaders.userAgentHeader: userAgent,
      clientId: clientId,
    };
  }
}