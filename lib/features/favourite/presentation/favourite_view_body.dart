// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruits/features/core/spacer.dart';
import 'package:fruits/features/core/utils/constant.dart';
import 'package:fruits/features/core/utils/size_config.dart';

class FavouritesViewBody extends StatefulWidget {
  const FavouritesViewBody({Key? key}) : super(key: key);

  @override
  State<FavouritesViewBody> createState() => _FavouritesViewBodyState();
}

class _FavouritesViewBodyState extends State<FavouritesViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: SizeConfig.defaultsize! * 12,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 12, bottom: 12),
          color: kmaincolor,
          child: const Text(
            'Favourites',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(12),
                height: 150,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Image.asset('assets/images/veg4.png')),
                    const HorizentalSpace(value: 1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Bazinjan',
                          style: TextStyle(fontSize: 15),
                        ),
                        const Text(
                          'Pick up from organic farms',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
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
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.2),
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
                        Row(
                          children: [
                            IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_circle_outline_rounded,
                                  size: 35,
                                  color: Color(0xff393939),
                                )),
                            const Text(
                              '500',
                              style: TextStyle(fontSize: 15),
                            ),
                            IconButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle_outline_rounded,
                                  size: 35,
                                  color: Color(0xff393939),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '160 Per/ kg',
                          style: TextStyle(fontSize: 15),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Add',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.defaultsize! * 3.5)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffCC7D00))),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
