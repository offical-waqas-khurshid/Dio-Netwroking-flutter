import 'package:get/get.dart';

import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/sigin_page/bindings/sigin_page_binding.dart';
import '../modules/sigin_page/views/sigin_page_view.dart';
import '../modules/signup_page/bindings/signup_page_binding.dart';
import '../modules/signup_page/views/signup_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGNUP_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_PAGE,
      page: () => const SignupPageView(),
      binding: SignupPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGIN_PAGE,
      page: () => const SiginPageView(),
      binding: SiginPageBinding(),
    ),
  ];
}
