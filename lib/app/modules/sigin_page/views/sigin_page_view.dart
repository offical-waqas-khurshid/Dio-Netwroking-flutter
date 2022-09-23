import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sigin_page_controller.dart';

class SiginPageView extends GetView<SiginPageController> {
  const SiginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SiginPageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'SignIn',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: controller.emailTextEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: controller.passwordTextEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(onPressed: () {
                      controller.loginUser();
                      controller.getUser();
                      Get.toNamed(Routes.HOME_PAGE);
                  }, child: const Text('SignIn')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
