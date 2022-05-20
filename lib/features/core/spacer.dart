import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/size_config.dart';

class HorizentalSpace extends StatelessWidget {
  const HorizentalSpace({
    Key? key,
    required this.value,
  }) : super(key: key);
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultsize! * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    Key? key,
    required this.value,
  }) : super(key: key);
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultsize! * value,
    );
  }
}
