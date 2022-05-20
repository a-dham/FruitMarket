// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/presentaion/Login/Login_view.dart';
import 'package:fruits/features/core/elevated_buttons.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/onboarding/presentation/widgets/dots_indicators.dart';
import 'package:fruits/features/onboarding/presentation/widgets/page_view.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardBody extends StatefulWidget {
  OnBoardBody({Key? key}) : super(key: key);

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {
  PageController? pagecontroller;
  @override
  void initState() {
    pagecontroller = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Pageview(
          pageController: pagecontroller,
        ),
        Positioned(
          bottom: SizeConfig.defaultsize! * 18,
          left: SizeConfig.defaultsize! * 10,
          right: SizeConfig.defaultsize! * 10,
          child: Dotindicator(
            currentpostion:
                pagecontroller!.hasClients ? pagecontroller!.page! : 0,
          ),
        ),
        Visibility(
          visible: skipvisible(),
          child: Positioned(
            top: SizeConfig.defaultsize! * 10,
            right: SizeConfig.defaultsize! * 2,
            child: TextButton(
              onPressed: () {
                setState(() {
                  Get.to(
                    () => const LoginView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 900),
                  );
                });
              },
              child: Text(
                AppLocalizations.of(context)!.skip,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultsize! * 7,
          left: SizeConfig.defaultsize! * 10,
          right: SizeConfig.defaultsize! * 10,
          child: Elevatedbuttons(
            onpress: () {
              nexttosecondpage();
              setState(() {});
            },
            text: changetextbutton(),
            color: kmaincolor,
          ),
        )
      ],
    );
  }

  skipvisible() {
    bool visibilty;
    if (pagecontroller!.hasClients && pagecontroller!.page == 2) {
      visibilty = false;
    } else {
      visibilty = true;
    }
    return visibilty;
  }

  changetextbutton() {
    String text;
    if (pagecontroller!.hasClients && pagecontroller!.page == 2) {
      text = AppLocalizations.of(context)!.getstarted;
    } else {
      text = AppLocalizations.of(context)!.next;
    }
    return text;
  }

  nexttosecondpage() {
    if (pagecontroller!.hasClients && pagecontroller!.page == 0 ||
        pagecontroller!.hasClients && pagecontroller!.page == 1) {
      pagecontroller?.nextPage(
          duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
      print(pagecontroller?.page);
    } else if (pagecontroller!.hasClients && pagecontroller!.page == 2) {
      Get.to(
        () => const LoginView(),
        transition: Transition.downToUp,
        duration: const Duration(microseconds: 600),
      );
    }
  }
}
