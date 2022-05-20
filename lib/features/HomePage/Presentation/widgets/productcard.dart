// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/product_details.dart';

import 'package:fruits/features/core/utils/size_config.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class PruductCard extends StatelessWidget {
  const PruductCard({
    Key? key,
    required this.image,
    required this.product_name,
    required this.price,
  }) : super(key: key);
  final String image;
  final String product_name;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.to(
                    const ProductDetail(),
                    transition: Transition.downToUp,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeIn,
                  );
                },
                child: Image.asset(
                  image,
                  height: 140,
                ),
              ),
              Positioned(
                right: SizeConfig.defaultsize! * 1.2,
                top: SizeConfig.defaultsize! * 1.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: IconButton(
                    splashColor: Colors.red,
                    onPressed: () {},
                    iconSize: 18,
                    icon: const Icon(
                      Icons.favorite_outline,
                    ),
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RatingBar(
                itemSize: 20,
                initialRating: 2,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                unratedColor: Colors.grey,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.2),
                ratingWidget: RatingWidget(
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star_half,
                    color: Colors.amber,
                  ),
                  empty: const Icon(
                    Icons.star_half,
                  ),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          Text(
            product_name,
            style: const TextStyle(fontSize: 17),
          ),
          Text(
            r'$' '$price Per/Kg',
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
