import 'package:get/get.dart';

import '../modules/success/success_binding.dart';
import '../modules/success/success_page.dart';

class SuccessRoutes {
  SuccessRoutes._();

  static const success = '/success';

  static final routes = [
    GetPage(
      name: success,
      page: () => const SuccessPage(),
      binding: SuccessBinding(),
    ),
  ];
}
