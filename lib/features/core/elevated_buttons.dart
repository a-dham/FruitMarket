import 'package:flutter/material.dart';

class Elevatedbuttons extends StatelessWidget {
  const Elevatedbuttons({
    Key? key,
    required this.text,
    required this.color,
    required this.onpress,
  }) : super(key: key);
  final String text;
  final Color? color;
  final Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      child: Text(
        text,
        style: const TextStyle(fontSize: 22, color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    required this.onpress,
    required this.icon,
    required this.lable,
    required this.color,
  }) : super(key: key);
  final VoidCallback onpress;
  final Icon icon;
  final String lable;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onpress,
      icon: icon,
      label: Text(
        lable,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
