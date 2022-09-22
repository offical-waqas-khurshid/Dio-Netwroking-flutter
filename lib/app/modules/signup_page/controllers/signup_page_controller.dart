import 'dart:convert';
import 'package:api_basic_flutter/app/model/DioClient.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../model/DioException.dart';
import '../../../model/UserModel.dart';
import '../../../model/endPoint.dart';
import '../../../routes/app_pages.dart';

class SignupPageController extends GetxController {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  DioClient dioClient = DioClient();


  Dio dio = Dio();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  /////////////// Create user method
  createUser() async {
    UserModel userModel = UserModel(name: nameTextEditingController.text, email: emailTextEditingController.text, password: passwordTextEditingController.text);
    await dioClient.createUser(userModel: userModel).then((value){
     Get.toNamed(Routes.SIGIN_PAGE);
     Get.snackbar("Congratulation!!!!", "Successfully User Created", snackPosition: SnackPosition.BOTTOM);
   });
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
