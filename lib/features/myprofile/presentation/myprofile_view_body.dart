import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fruits/features/myprofile/presentation/widgets/settings.dart';
import 'package:get/get.dart';

class MyProfileViewBody extends StatefulWidget {
  const MyProfileViewBody({Key? key}) : super(key: key);

  @override
  State<MyProfileViewBody> createState() => _MyProfileViewBodyState();
}

class _MyProfileViewBodyState extends State<MyProfileViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, top: 30),
            height: SizeConfig.defaultsize! * 24,
            width: double.infinity,
            color: const Color(0xff69A03A),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const CircleAvatar(
                  maxRadius: 40,
                  minRadius: 25,
                  backgroundImage: AssetImage(
                    'assets/images/pro.jpg',
                  ),
                ),
                const Text(
                  'Adham Elsharkawy',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'eelsharkawya@gmail.com',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.shopping_bag,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.myorders),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.favorite,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.favourts),
            ),
          ),
          InkWell(
            //   borderRadius: BorderRadius.only(),

            onTap: () {
              setState(() {
                Get.to(
                  () => const Settings(),
                  duration: const Duration(milliseconds: 500),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeIn,
                );
              });
            },
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.settings,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.settings),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.mycart),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.rate_review_rounded,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.rateus),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.share,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.refer),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.help,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.help),
            ),
          ),
          InkWell(
            //    customBorder:ShapeBorder(),
            //   borderRadius: BorderRadius.only(),
            onTap: () {},
            highlightColor: kmaincolor,
            child: ListTile(
              leading: const Icon(
                Icons.logout,
                color: kmaincolor,
              ),
              title: Text(AppLocalizations.of(context)!.logout),
            ),
          ),
        ],
      ),
    );
  }
}
