import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/splash_screen/presentation/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kmaincolor,
      body: SplashScreenBody(),
    );
  }
}
