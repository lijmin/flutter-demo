import 'package:flutter/material.dart';
import 'package:flutter_demo/route/route_config.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'config/color.dart';
import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      showSemanticsDebugger: false,
      theme: ThemeData(
        appBarTheme: MyTheme.appBarTheme,
        textTheme: MyTheme.textTheme,
        textButtonTheme: MyTheme.textButtonTheme,
        outlinedButtonTheme: MyTheme.outlinedButtonTheme,
        dividerTheme: MyTheme.dividerTheme,
        tabBarTheme: MyTheme.tabBarTheme,
        backgroundColor: MyColor.bg,
      ),
      initialRoute: MyRoute.home,
      getPages: MyRoute.getPages,
    );
  }
}
