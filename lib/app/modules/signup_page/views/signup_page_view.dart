import 'package:api_basic_flutter/app/model/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';

import 'package:get/get.dart';

import '../controllers/signup_page_controller.dart';

class SignupPageView extends GetView<SignupPageController> {
 const SignupPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignupPageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Signup',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: controller.nameTextEditingController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                      labelText: 'Name',
                    ),
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
                     controller.createUser();
                  }, child: const Text('Signup')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
