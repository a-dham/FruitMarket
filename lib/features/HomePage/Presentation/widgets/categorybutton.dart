import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({
    Key? key,
    required this.text,
    required this.onpress,
    required this.color,
  }) : super(key: key);
  final Widget text;
  final Callback onpress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: text,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))),
    );
  }
}
