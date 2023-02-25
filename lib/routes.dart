import 'package:get/get.dart';

import 'package:template_flutter/pages/home_page.dart';

abstract class Routes {
  static const home = "/home";
  static const unknownRoute = "/unknown_route";
}

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: initial,
      page: () => const HomePage(),
    ),
  ];
}
