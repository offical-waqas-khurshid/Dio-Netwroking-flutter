import 'package:get/get.dart';

import '../controllers/signup_page_controller.dart';

class SignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupPageController>(
      () => SignupPageController(),
    );
  }
}
