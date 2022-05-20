import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kmaincolor,
        title: Text(AppLocalizations.of(context)!.settings),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: const Text('select lang'),
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 28,
          elevation: 20,
          onChanged: (String? newval) {
            setState(() {
              dropdownvalue = newval;
              if (dropdownvalue == 'Arabic') {
                setState(() {
                  Get.updateLocale(const Locale('ar'));
                });
              } else if (dropdownvalue == 'English') {
                setState(() {
                  Get.updateLocale(const Locale('en'));
                });
              }
            });
          },
          items: <String>["English", "Arabic"]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
