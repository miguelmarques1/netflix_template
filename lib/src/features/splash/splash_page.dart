import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToInitialPage();
  }

  Future<void> navigateToInitialPage() async {
    await Future.delayed(const Duration(seconds: 5));
    Modular.to.pushReplacementNamed('/initial');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/netflix.gif', 
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}