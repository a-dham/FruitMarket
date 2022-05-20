import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:fruits/features/core/utils/constant.dart';

class Dotindicator extends StatelessWidget {
  const Dotindicator({
    Key? key,
    required this.currentpostion,
  }) : super(key: key);
  final int _dotscount = 3;
  final double currentpostion;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: _dotscount,
      position: currentpostion,
      decorator: const DotsDecorator(
          activeColor: kmaincolor,
          color: Colors.white,
          spacing: EdgeInsets.all(10.0),
          activeSize: Size.square(12),
          size: Size.square(12),
          shape: CircleBorder(side: BorderSide(color: kmaincolor, width: 1.5))),
    );
  }
}
