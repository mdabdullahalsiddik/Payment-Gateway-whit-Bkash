import 'home_routes.dart';
import 'success_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';

  static final routes = [
    ...HomeRoutes.routes,
		...SuccessRoutes.routes,
  ];
}
