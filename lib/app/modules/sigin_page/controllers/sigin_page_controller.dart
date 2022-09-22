import 'package:api_basic_flutter/app/model/DioClient.dart';
import 'package:api_basic_flutter/app/model/UserModel.dart';
import 'package:api_basic_flutter/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SiginPageController extends GetxController {

  ///////////// get text from input fields
  TextEditingController emailTextEditingController  = TextEditingController();
  TextEditingController passwordTextEditingController  = TextEditingController();

  DioClient dioClient;
  SiginPageController(this.dioClient);
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    dioClient.createUser(userModel: UserModel(name: ""));
  }
    /////////////// user login method
   loginUser() async{
    UserModel userModelLogin = UserModel(email: emailTextEditingController.text, password: passwordTextEditingController.text);
    await dioClient.loginUser(userModel: userModelLogin).then((value){
      Get.toNamed(Routes.HOME_PAGE);
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
