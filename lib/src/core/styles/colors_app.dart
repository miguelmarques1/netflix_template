import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i{
    _instance??=  ColorsApp._();
    return _instance!;
  }

  Color get primary => Colors.black;

  Color get secondary => const Color.fromRGBO(219, 32, 44, 1);

  Color get primaryGrey => const Color.fromARGB(255, 138, 138, 138);

  Color get primaryblack => const Color.fromARGB(255, 5, 5, 5);

  Color get tertiaryGrey => const Color.fromARGB(255, 27, 26, 26);

  Color get secondaryGrey => const Color.fromARGB(255, 35, 36, 36);

  Color get secondaryBlack => const Color.fromRGBO(18, 18, 18, 1);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}