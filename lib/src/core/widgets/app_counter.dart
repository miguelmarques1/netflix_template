import 'package:flutter/material.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';

class AppCounter extends StatefulWidget {
  final int currentPage;
  final double size;
  final int itemCount;
  const AppCounter({super.key, required this.currentPage, required this.size, required this.itemCount});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * .025,
        );
      },
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .075),
      itemBuilder: (context, index) {
        return UnconstrainedBox(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              color: index == widget.currentPage ? context.colors.secondary : context.colors.primaryGrey,
              borderRadius: BorderRadius.circular(widget.size / 2)
            ),
          ),
        );
      }
    );
  }
}