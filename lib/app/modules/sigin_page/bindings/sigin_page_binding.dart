import 'package:api_basic_flutter/app/model/DioClient.dart';
import 'package:get/get.dart';
import '../controllers/sigin_page_controller.dart';

class SiginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SiginPageController>(
      () => SiginPageController(DioClient()),
    );
  }
}
