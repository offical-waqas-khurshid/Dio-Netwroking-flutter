import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      body: Center(
        child: Text(
          'SiginPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
