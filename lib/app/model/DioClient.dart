import 'package:api_basic_flutter/app/model/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'AuthorizationInterceptor.dart';
import 'DioException.dart';
import 'endPoint.dart';

class DioClient{
  late final Dio _dio;
  DioClient(): _dio = Dio(BaseOptions(
    baseUrl: 'https://5an1bh.deta.dev/',
    connectTimeout: 8000,
    receiveTimeout: 3000,
    responseType: ResponseType.json,
  ))..interceptors.add(AuthorizationInterceptor());

  //////////// Create method

  Future<UserModel?> createUser({required UserModel userModel}) async {
    try {
      final createUserResponse = await _dio.post(Endpoints.registerEndPointURL, data: userModel.toJson());
      if (createUserResponse.statusCode == 200) {
        return UserModel.fromJson(createUserResponse.data);
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

  //////////// Login User method

 Future<UserModel?> loginUser({required UserModel userModel}) async{
    try{
      print("${userModel.email}|${userModel.password}");
     final loginUserResponse = await _dio.post(Endpoints.loginEndPointURL, data: userModel.toJson());
     if(loginUserResponse.statusCode == 200){
       return UserModel.fromJson(loginUserResponse.data);
     }else{
       throw Exception('Filled to login user');
     }
    }on DioError catch (err){
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
     }catch(e){
      if(kDebugMode) print(e);
      throw e.toString();
    }
 }

 /////////////// Get user method

 Future<UserModel?> getUser() async {
    try{
      final getUserResponse = await _dio.get(Endpoints.baseURL);
      if(getUserResponse.statusCode == 200){
        return UserModel.fromJson(getUserResponse.data);
      }
    }on DioError catch(error){
      final errorMessage = DioException.fromDioError(error).toString();
      throw errorMessage;
    }catch(e){
      if(kDebugMode) print(e);
        throw e.toString();
    }
 }
}