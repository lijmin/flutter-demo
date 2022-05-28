import 'package:get/get.dart';

import 'icon_state.dart';

class IconLogic extends GetxController {
  final IconState state = IconState();
  var a = 0.obs;

  @override
  void onInit(){
    super.onInit();
    interval(a, (_) => print("interval $_"), time: Duration(seconds: 1));
  }
}
