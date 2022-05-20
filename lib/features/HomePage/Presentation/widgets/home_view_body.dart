import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/dryfruits.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/fruits.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/vegetabels.dart';
import 'package:fruits/features/core/textformfield.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

enum Category { vegetables, fruits, dryfruits }
Category? selectedcategory = Category.fruits;
List<Widget> categorylist = [];

class _HomePageBodyState extends State<HomePageBody>
    with SingleTickerProviderStateMixin {
  // PageController? controller;
  TabController? tabcontroller;

  @override
  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 3, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    // controller = PageController(initialPage: 1)
    //   ..addListener(() {
    //     setState(() {
    //       print(controller);
    //     });
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: SizeConfig.defaultsize! * 18,
                  padding: const EdgeInsets.all(8),
                  color: kmaincolor,
                  child: Center(
                    child: Row(children: [
                      Text(
                        AppLocalizations.of(context)!.titleofhomepage,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Expanded(child: SizedBox()),
                      const Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  bottom: SizeConfig.defaultsize! * -2.5,
                  right: SizeConfig.defaultsize! * 2,
                  left: SizeConfig.defaultsize! * 2,
                  child: customtextflield(
                    onend: () {},
                    hinttext: AppLocalizations.of(context)!.search,
                    prefixicon: const Icon(Icons.search),
                  ),
                ),
              ],
            ),
          ),
          TabBar(
              automaticIndicatorColorAdjustment: true,
              labelStyle: const TextStyle(color: Colors.white),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffCC7D00)),
              controller: tabcontroller,
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              //  overlayColor: MaterialStateProperty.all(Colors.green),
              labelColor: Colors.white,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: AppLocalizations.of(context)!.vegetables,
                ),
                Tab(
                  text: AppLocalizations.of(context)!.fruits,
                ),
                Tab(
                  text: AppLocalizations.of(context)!.dryfruits,
                ),
              ]),
          Expanded(
            child: TabBarView(
              controller: tabcontroller,
              children: const [
                Tab(
                  child: Center(
                    child: Vegetabels(),
                  ),
                ),
                Tab(
                  child: Fruits(),
                ),
                Tab(
                  child: DryFruits(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
