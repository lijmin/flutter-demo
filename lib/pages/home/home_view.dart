import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeLogic>(builder: (logic) {
      return Scaffold(
        body: state.widgets[state.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.currentIndex,
          backgroundColor: Colors.white,
          selectedFontSize: 12,
          unselectedItemColor: const Color(0xff959FBF),
          onTap: (int index) {
            logic.onNavigationSelect(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "widgets"),
            BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "servers"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "settings")
          ],
        ),
      );
    });
  }
}
