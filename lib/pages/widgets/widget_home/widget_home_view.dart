import 'package:flutter/material.dart';
import 'package:flutter_demo/route/MyRoute.dart';
import 'package:get/get.dart';

import 'widget_home_logic.dart';

class WidgetHomePage extends StatelessWidget {
  final logic = Get.put(WidgetHomeLogic());
  final state = Get.find<WidgetHomeLogic>().state;

  WidgetHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
      ),
      body: Wrap(spacing: 4, children: [
        OutlinedButton(
          onPressed: () => Get.toNamed(MyRoute.icon),
          child: const Text("icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Image"),
        ),
      ]),
    );
  }
}
