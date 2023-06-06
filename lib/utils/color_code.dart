import 'package:flutter/material.dart';

class ColorCode {
  // basic color
  static const Color transparent = Colors.transparent;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color blackShade = Color.fromRGBO(0, 0, 0, 0.5);

  // bottomnavigation color
  static const Color bluebg = Color(0xff00ccff);
  static const Color middleCircle = Color(0xfff87701);

  // dashboard color
  static const Color lightblue = Color(0xffd5eeff);
  static const Color darkBlue = Color(0xff5cabe0);
  static const Color peach = Color(0xfffff3ce);
  static const Color lightgrey = Color(0xffdadcfc);

  // supporter color
  static const Color boxBg = Color(0xfff8f7f7);

  static MaterialStateColor toMaterial(Color color) {
    return MaterialStateColor.resolveWith((states) => color);
  }
}
