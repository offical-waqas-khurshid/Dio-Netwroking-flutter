import 'dart:convert';

import 'package:api_basic_flutter/app/model/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import 'AuthorizationInterceptor.dart';
import 'DioException.dart';
import 'endPoint.dart';

class DioClient{
  late final Dio _dio;
  DioClient(): _dio = Dio(BaseOptions(
    baseUrl: 'https://5an1bh.deta.dev/user/insert/',
    connectTimeout: 8000,
    receiveTimeout: 3000,
    responseType: ResponseType.json,
  ))..interceptors.add(AuthorizationInterceptor());

  //////////// Create method
  Future<UserModel?> createUser({required UserModel userModel}) async {
    try {
      final response = await _dio.post(Endpoints.baseURL, data: userModel.toJson());
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Failed to create User.');
      }
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

}