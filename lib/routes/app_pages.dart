import 'package:get/get.dart';
import 'package:ui_sample/screens/home_screens/home_binding.dart';
import 'package:ui_sample/screens/home_screens/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}