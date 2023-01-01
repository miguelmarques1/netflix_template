import 'package:flutter/material.dart';

class TextStylesApp {
  static TextStylesApp? _instance;

  TextStylesApp._();

  static TextStylesApp get i {
    _instance??= TextStylesApp._();
    return _instance!;
  }

  TextStyle get primary => const TextStyle(
    fontFamily: 'Netflix',
    fontWeight: FontWeight.w700,
    color: Colors.white
  );
}

extension TextStylesAppExtension on BuildContext {
  TextStylesApp get textStyles => TextStylesApp.i;
}