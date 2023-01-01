import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:netflix_template/app_module.dart';
import 'package:netflix_template/netflix_template_app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const NetflixTemplateApp()));
}
