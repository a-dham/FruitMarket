// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/productcard.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/productsections.dart';

class Fruits extends StatelessWidget {
  const Fruits({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          const ProductSections(
            discreption: 'Pick up from organic farms',
            discount: 20,
            texttitle: 'Organic Fruits',
            productcard: PruductCard(
              image: 'assets/images/straw.png',
              product_name: 'Strawberry',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Fruit mix fresh pack ',
            discount: 10,
            texttitle: 'Mix Fruit Pack',
            productcard: PruductCard(
              image: 'assets/images/pack.png',
              product_name: 'Tropicana',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Fresh stone fruits ',
            discount: 20,
            texttitle: 'Stone Fruits',
            productcard: PruductCard(
              image: 'assets/images/stone.png',
              product_name: 'Apricots',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Fresh Melons Fruits',
            discount: 5,
            texttitle: 'Melons',
            productcard: PruductCard(
              image: 'assets/images/melon.png',
              product_name: 'Melons',
              price: 2.5,
            ),
          ),
        ]);
  }
}
