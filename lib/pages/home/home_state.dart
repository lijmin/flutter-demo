import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/pages/widgets/widget_home/widget_home_view.dart';

class HomeState {
  late List<Widget> widgets;
  late int currentIndex;
  HomeState() {
    widgets = [WidgetHomePage(),Text("2"),Text("3")];
    currentIndex = 0;
  }
}
