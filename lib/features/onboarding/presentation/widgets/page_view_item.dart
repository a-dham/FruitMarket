import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/size_config.dart';
import 'package:fruits/features/core/spacer.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 19),
        SizedBox(
          height: SizeConfig.defaultsize! * 25,
          child: Image.asset(
            image,
          ),
        ),
        const VerticalSpace(
          value: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            color: Color(0xFF2F2E41),
            wordSpacing: 2,
          ),
        ),
        const VerticalSpace(
          value: 2,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 17,
            wordSpacing: 2,
            color: Color(0xff78787c),
            //   fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
