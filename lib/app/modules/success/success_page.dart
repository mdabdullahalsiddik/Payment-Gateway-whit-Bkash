import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_gateway/app/routes/home_routes.dart';
import 'success_controller.dart';

class SuccessPage extends GetView<SuccessController> {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check,
              color: Colors.green,
              size: 100,
            ),
            const Text('Success Payment'),
            const Text('Thank You'),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(HomeRoutes.home);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
