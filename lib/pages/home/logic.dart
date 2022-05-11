import 'package:get/get.dart';

import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();

  onNavigationSelect(int index){
    state.currentIndex = index;
    update();
  }
}
