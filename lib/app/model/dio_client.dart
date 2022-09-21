import 'package:dio/dio.dart';

import 'AuthorizationInterceptor.dart';

class DioClient{
  late final Dio _dio;
  DioClient(): _dio = Dio(BaseOptions(
    baseUrl: 'https://5an1bh.deta.dev/user/insert/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
    responseType: ResponseType.json,
  ))..interceptors.add(AuthorizationInterceptor());
}