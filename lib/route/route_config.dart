import 'package:get/get.dart';

import '../pages/home/view.dart';

class MyRoute {
  static const String main = "/";
  static const String home = '/home';
  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: home, page: () => HomePage()),
  ];
}

