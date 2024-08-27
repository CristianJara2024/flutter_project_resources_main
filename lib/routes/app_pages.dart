import 'package:flutter_project_resources/pages/auth/auth_middleware.dart';
import 'package:flutter_project_resources/pages/product/product_binding.dart';
import 'package:flutter_project_resources/pages/product/product_middleware.dart';
import 'package:flutter_project_resources/pages/product/product_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.product;

  static final routes = [
    GetPage(
      name: Routes.product,
      middlewares: [AuthGuard(), ProductGuard()],
      binding: ProductBinding(),
      page: () => const ProductPage(),
      transition: Transition.cupertino,
    ),
  ];
}
