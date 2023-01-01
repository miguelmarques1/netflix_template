import 'package:flutter/material.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';
import 'package:netflix_template/src/core/styles/text_styles_app.dart';

class AppButton extends StatefulWidget {
  final String text;
  final bool disable;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  const AppButton({super.key, required this.text, required this.onPressed, this.disable = false, this.width, this.height});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: widget.width ?? MediaQuery.of(context).size.width * .95,
      height: widget.height ?? MediaQuery.of(context).size.height * .066,
      child: widget.disable ? OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(
            color: Colors.black,
            width: 2
          )
        ),
        child: Text(widget.text,
          style: context.textStyles.primary.copyWith(
            color: context.colors.primaryGrey,
            fontWeight: FontWeight.w900
          ),
        ),
      ) : ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.secondary
        ), 
        child: Text(widget.text)
      ),
    );
  }
}

