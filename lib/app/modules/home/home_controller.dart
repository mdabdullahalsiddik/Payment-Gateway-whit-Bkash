import 'package:flutter/material.dart';
import 'package:flutter_bkash/flutter_bkash.dart';
import 'package:get/get.dart';
import 'package:payment_gateway/app/routes/success_routes.dart';

class HomeController extends GetxController {
  TextEditingController controller = TextEditingController();
  pay() async {
    var bka = FlutterBkash(
        bkashCredentials: const BkashCredentials(
            appKey: "4f6o0cjiki2rfm34kfdadl1eqq",
            appSecret: "2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b",
            username: 'sandboxTokenizedUser02',
            password: 'sandboxTokenizedUser02@12345',
            isSandbox: true));
    try {
      final result = await bka.pay(
        context: Get.context!,
        amount: double.parse(controller.text),
        merchantInvoiceNumber: '123',
      );
      Get.toNamed(SuccessRoutes.success, arguments: result);
      Get.snackbar('Success', 'Payment Success');
    } on BkashFailure catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
