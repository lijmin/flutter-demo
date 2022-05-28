import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/color.dart';
import 'icon_logic.dart';

class IconPage extends StatelessWidget {
  final logic = Get.put(IconLogic());
  final state = Get.find<IconLogic>().state;

  IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon"),
      ),
      body: Wrap(
        children: [
          _itemWidget(
            "materialIcon",
            const Icon(
              Icons.add,
              color: Colors.green,
            ),
          ),
          _itemWidget(
            "textIcon",
            const Text(
              "\ue6df",
              style: TextStyle(
                fontFamily: "aliIcon",
                fontSize: 24,
                color: Colors.green,
              ),
            ),
          ),
          _itemWidget(
            "aliIcon",
            const Icon(
              IconData(0xe6df, fontFamily: 'aliIcon'),
              color: MyColor.primary,
            ),
          ),
          _itemWidget(
            "iconButton",
            IconButton(
              padding: EdgeInsets.zero,
              iconSize: 24,
              onPressed: () => Get.snackbar('Hi', 'i am a IconButton'),
              icon: const Icon(
                IconData(0xe6df, fontFamily: 'aliIcon'),
                color: MyColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemWidget(String text, Widget icon) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
