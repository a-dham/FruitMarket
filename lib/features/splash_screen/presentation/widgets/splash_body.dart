// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:fruits/features/onboarding/onboarding_view.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreenBody extends StatefulWidget {
  SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationcontroller;
  @override
  void initState() {
    super.initState();
    animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    animation = Tween<double>(
      begin: 0.3,
      end: 1.0,
    ).animate(animationcontroller!);
    animationcontroller?.repeat(reverse: true);
    movenextview();
  }

  @override
  void dispose() {
    animationcontroller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FadeTransition(
          opacity: animation!,
          child: Text(
            AppLocalizations.of(context)!.splash,
            style: const TextStyle(
              fontFamily: 'poppins',
              color: Colors.white,
              fontSize: 52,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.asset(
          'assets/images/slpash_screen.png',
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void movenextview() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const OnBoardView());
    });
  }
}
