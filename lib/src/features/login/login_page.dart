import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';
import 'package:netflix_template/src/core/styles/text_styles_app.dart';
import 'package:netflix_template/src/core/widgets/app_logo.dart';
import 'package:netflix_template/src/core/widgets/app_button.dart';
import 'package:netflix_template/src/core/widgets/app_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailFocus = FocusNode();
  final _passFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primaryblack,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onTap: () {
            Modular.to.pop();
          },
        ),
        centerTitle: true,
        title: AppLogo(
          size: MediaQuery.of(context).size.height * .08,
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Center(
                child: Text('Help',
                  style: context.textStyles.primary.copyWith(
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AppTextField(
              inputFocus: _emailFocus,
              label: 'Email or phone number',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: AppTextField(
              inputFocus: _passFocus,
              label: 'Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AppButton(
            text: 'Sign In', 
            onPressed: () {}, 
            disable: true,
            width: MediaQuery.of(context).size.width * .75,
            height: MediaQuery.of(context).size.height * .076,
          )
        ],
      ),
    );
  }
}