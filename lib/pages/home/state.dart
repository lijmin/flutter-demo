import 'package:flutter/cupertino.dart';

class HomeState {
  late List<Widget> widgets;
  late int currentIndex;
  HomeState() {
    widgets = [Text("1"),Text("2"),Text("3")];
    currentIndex = 0;
  }
}
