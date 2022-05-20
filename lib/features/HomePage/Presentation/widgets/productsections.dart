import 'package:flutter/material.dart';

import 'package:fruits/features/core/spacer.dart';
import 'package:fruits/features/core/utils/size_config.dart';

class ProductSections extends StatelessWidget {
  const ProductSections({
    Key? key,
    required this.texttitle,
    required this.discount,
    required this.discreption,
    required this.productcard,
  }) : super(key: key);
  final String texttitle;
  final double discount;
  final String discreption;
  final Widget productcard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.defaultsize! * 1.8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Text(
              texttitle,
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '($discount% Off)',
              style: const TextStyle(color: Colors.green),
            ),
          ],
        ),
        const VerticalSpace(value: 0.8),
        Text(
          discreption,
          style: const TextStyle(fontSize: 13),
        ),
        const VerticalSpace(value: 0.8),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,

            //  padding: EdgeInsets.only(right: 30),
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return productcard;
            },
          ),
        ),
      ]),
    );
  }
}
