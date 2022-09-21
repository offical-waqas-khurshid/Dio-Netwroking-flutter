import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../model/AuthorizationInterceptor.dart';
import '../../../model/DioException.dart';
import '../../../model/UserModel.dart';

class SignupPageController extends GetxController {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  Dio dio = Dio();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<UserModel?> createUser() async {

    try {
      var data = {
        'name': nameTextEditingController.text,
        'email': emailTextEditingController.text,
        'password': passwordTextEditingController.text,};
      final response = await dio.post(
        '/users',
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
      return UserModel.fromJson(jsonDecode(response.data));
    } on DioError catch (err) {
      final errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

