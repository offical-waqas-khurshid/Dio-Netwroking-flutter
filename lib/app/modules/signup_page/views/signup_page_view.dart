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
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      var validator = Validator(
                        validators: [RequiredValidator()],
                      );

                      return validator.validate(
                        context: context,
                        label: 'Required',
                        value: value,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      var validator = Validator(
                        validators: [
                          RequiredValidator(),
                          EmailValidator(),
                        ],
                      );

                      return validator.validate(
                        context: context,
                        label: 'Email',
                        value: value,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      var validator = Validator(
                        validators: [
                          MaxLengthValidator(length: 15),
                          MinLengthValidator(length: 6),
                        ],
                      );
                      return validator.validate(
                        context: context,
                        label: 'Min 6 / Max 15 Length',
                        value: value,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Signup')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
