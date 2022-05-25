import 'package:get/get.dart';

import '../pages/home/home_view.dart';
import '../pages/widgets/icon/icon_view.dart';

class MyRoute {
  static const String main = "/";
  static const String home = '/home';
  static const String icon = '/icon';
  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: icon, page: () => IconPage()),
  ];
}

