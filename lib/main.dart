import 'package:flutter/material.dart';
import 'package:fruits/features/splash_screen/slpash_view.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatefulWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  State<FruitsMarket> createState() => _FruitsMarketState();
}

class _FruitsMarketState extends State<FruitsMarket> {
  Locale? mylocal;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/': (context) => const SplashScreen(),
      },
      // onGenerateRoute: (settings) {
      //   switch (settings.name) {
      //     case Settings.routeName:
      //       Settings(
      //         setLocal: mylocal,
      //       );
      //   }
      // },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // localeResolutionCallback: (
      //   Locale? locale,
      //   Iterable<Locale> supportedLocales,
      // ) {
      //   return locale;
      // },
    );
  }
}
