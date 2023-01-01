import 'package:flutter/material.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';
import 'package:netflix_template/src/core/styles/text_styles_app.dart';

class AppTextField extends StatefulWidget {
  final FocusNode inputFocus;
  final double? width;
  final double? height;
  final String label;
  const AppTextField({super.key, required this.inputFocus, this.width, this.height, required this.label});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .015, bottom: MediaQuery.of(context).size.height * .015),
      width: widget.width ?? MediaQuery.of(context).size.width * .75,
      height: widget.height ?? MediaQuery.of(context).size.height * .066,
      decoration: BoxDecoration(
        color: widget.inputFocus.hasFocus ? context.colors.secondaryGrey : context.colors.tertiaryGrey,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        focusNode: widget.inputFocus,
        style: context.textStyles.primary.copyWith(
          color: Colors.white
        ),
        decoration: InputDecoration(
          label: Text(widget.label),
          labelStyle: context.textStyles.primary.copyWith(
            color: context.colors.primaryGrey,
            fontWeight: FontWeight.w400
          ),
          floatingLabelStyle: context.textStyles.primary.copyWith(
            fontSize: 14,
            color: context.colors.primaryGrey
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}