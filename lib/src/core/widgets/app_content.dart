import 'package:flutter/material.dart';
import 'package:netflix_template/src/core/styles/text_styles_app.dart';

class AppContent extends StatelessWidget {
  final String? image;
  final String title;
  final String subtitle;
  const AppContent({super.key, this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image != null ? Image.asset(image!, height: MediaQuery.of(context).size.height * .3,) : SizedBox(
          height: MediaQuery.of(context).size.height * .3,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * .15,
          margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .15),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 200,
                spreadRadius: 20,
                blurStyle: BlurStyle.normal
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                style: context.textStyles.primary.copyWith(
                  fontSize: 28
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .05, right: MediaQuery.of(context).size.width * .05),
                child: Text(subtitle,
                  style: context.textStyles.primary.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                  
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}