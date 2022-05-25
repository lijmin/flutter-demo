import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            "imageIcon",
            Icon(Icons.add),
          ),
          _itemWidget(
            "imageIcon",
            Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget _itemWidget(String text, Icon icon) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        children: const [
          Icon(Icons.home),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("data"),
          ),
        ],
      ),
    );
  }
}
