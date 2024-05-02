import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_gateway/app/core/widgets/text_field.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Bkash Payment'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomTextFromField(
          controller: controller.controller,
          hintText: 'Enter Amount',
        ),
        ElevatedButton(
            onPressed: () {
              controller.pay();
            },
            child: const Text('Pay'))
      ])),
    );
  }
}
