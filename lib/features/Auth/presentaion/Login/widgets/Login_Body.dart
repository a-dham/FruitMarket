// ignore_for_file: file_names

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/presentaion/complete_Login/clogin_view.dart';
import 'package:fruits/features/core/elevated_buttons.dart';
import 'package:fruits/features/core/spacer.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: SizedBox()),
        Image.asset(
          klogo,
          height: SizeConfig.defaultsize! * 24,
        ),
        const VerticalSpace(value: 2),
        Text(
          AppLocalizations.of(context)!.splash,
          style: const TextStyle(
              fontFamily: 'poppins',
              color: kmaincolor,
              fontSize: 52,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            const HorizentalSpace(value: 1),
            Expanded(
              child: ButtonIcon(
                onpress: () {
                  setState(() {
                    Get.to(() => const CloginView(),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                        transition: Transition.leftToRight);
                  });
                },
                icon: const Icon(
                  EvaIcons.google,
                  color: Colors.red,
                  size: 40.0,
                ),
                lable: AppLocalizations.of(context)!.loginwith,
                color: Colors.transparent,
              ),
            ),
            const HorizentalSpace(value: 1),
            Expanded(
              child: ButtonIcon(
                onpress: () {},
                icon: const Icon(
                  EvaIcons.facebook,
                  size: 40.0,
                ),
                lable: AppLocalizations.of(context)!.loginwith,
                color: Colors.transparent,
              ),
            ),
            const HorizentalSpace(value: 1),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
