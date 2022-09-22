import 'package:api_basic_flutter/app/model/DioClient.dart';
import 'package:api_basic_flutter/app/model/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SiginPageController extends GetxController {
  //TODO: Implement SiginPageController
  DioClient dioClient;
  SiginPageController(this.dioClient);
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    dioClient.createUser(userModel: UserModel(name: ""));
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
