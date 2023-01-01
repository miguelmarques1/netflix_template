import 'package:flutter_modular/flutter_modular.dart';
import 'package:netflix_template/src/features/initial/initial_page.dart';
import 'package:netflix_template/src/features/login/login_page.dart';
import 'package:netflix_template/src/features/splash/splash_page.dart';


class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashScreen()),
    ChildRoute('/initial', child: (context, args) => const InitialPage()),
    ChildRoute('/login', child: (context, args) => const LoginPage())
  ];
}