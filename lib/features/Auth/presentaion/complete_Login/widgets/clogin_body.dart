import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/home_view.dart';
import 'package:fruits/features/core/elevated_buttons.dart';
import 'package:fruits/features/core/spacer.dart';
import 'package:fruits/features/core/textformfield.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CloginBody extends StatelessWidget {
  const CloginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const VerticalSpace(value: 2),
          const Expanded(child: SizedBox()),
          FormItems(
            onend: () {},
            lable: 'Enter Your Name',
            icon: const Icon(Icons.person),
          ),
          const VerticalSpace(value: 2),
          FormItems(
            onend: () {},
            lable: 'Enter Your  Phone Number',
            icon: const Icon(Icons.phone_android_outlined),
          ),
          const VerticalSpace(value: 2),
          FormItems(
            onend: () {},
            lable: 'Add You Address',
            icon: const Icon(Icons.location_city_rounded),
          ),
          const VerticalSpace(value: 2),
          FormItems(
            onend: () {},
            lable: 'Your Email',
            icon: const Icon(EvaIcons.email),
          ),
          const Expanded(child: SizedBox()),
          Row(
            children: [
              Expanded(
                child: Elevatedbuttons(
                  text: AppLocalizations.of(context)!.login,
                  onpress: () {
                    Get.to(() => const HomePageView());
                  },
                  color: kmaincolor,
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
