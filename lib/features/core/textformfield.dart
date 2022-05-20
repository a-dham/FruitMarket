import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/core/utils/size_config.dart';

class FormItems extends StatelessWidget {
  const FormItems(
      {Key? key, required this.onend, required this.lable, required this.icon})
      : super(key: key);
  final String lable;
  final Icon icon;
  final VoidCallback onend;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onend,
      decoration: InputDecoration(
        labelText: lable,
        enabled: true,
        suffixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class customtextflield extends StatelessWidget {
  const customtextflield(
      {Key? key,
      required this.onend,
      required this.hinttext,
      required this.prefixicon})
      : super(key: key);
  final String hinttext;
  final Icon prefixicon;
  final VoidCallback onend;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: SizedBox(
        height: SizeConfig.defaultsize! * 5,
        width: SizeConfig.defaultsize! * 35,
        child: TextField(
          clipBehavior: Clip.none,
          onEditingComplete: onend,
          style: const TextStyle(),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,
            hintStyle: const TextStyle(
              color: Color(0xffC3C3C3),
            ),
            enabled: true,
            prefixIcon: prefixicon,
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: kmaincolor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
