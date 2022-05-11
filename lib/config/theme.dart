import 'package:flutter/material.dart';
import 'color.dart';
import 'dimen.dart';

class MyTheme {
  static TextTheme textTheme = const TextTheme(
    titleLarge: TextStyle(color: MyColor.text33, fontSize: MyDimen.textSizeL),
    titleMedium: TextStyle(color: MyColor.text66, fontSize: MyDimen.textSizeM),
    titleSmall: TextStyle(color: MyColor.text99, fontSize: MyDimen.textSizeS),
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    centerTitle: true,
    backgroundColor: MyColor.primary,
    elevation: 1,
    titleTextStyle: TextStyle(
        fontSize: MyDimen.textSizeL,
        fontWeight: FontWeight.bold,
        color: Colors.white),
  );

  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(primary: MyColor.primary));

  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          side: const BorderSide(color: MyColor.primary)));

  static DividerThemeData dividerTheme =
      const DividerThemeData(color: MyColor.divide, space: 1, thickness: 1);

  static TabBarTheme tabBarTheme = const TabBarTheme(
      labelColor: MyColor.text33,
      unselectedLabelStyle:
          TextStyle(fontSize: MyDimen.textSizeM, color: MyColor.text99),
      labelStyle:
          TextStyle(fontSize: MyDimen.textSizeL, fontWeight: FontWeight.bold));
}
