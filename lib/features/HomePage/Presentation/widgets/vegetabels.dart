// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/productcard.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/productsections.dart';

class Vegetabels extends StatelessWidget {
  const Vegetabels({
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
            texttitle: 'Organic Vegetables',
            productcard: PruductCard(
              image: 'assets/images/veg4.png',
              product_name: 'Brinjels',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Mixed Vegetables Pack',
            discount: 10,
            texttitle: 'Vegetable mix fresh pack',
            productcard: PruductCard(
              image: 'assets/images/veg1.png',
              product_name: 'Paper Veg tables',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Fresh Allium Vegetables',
            discount: 20,
            texttitle: 'Allium Vegetabels',
            productcard: PruductCard(
              image: 'assets/images/veg3.png',
              product_name: 'Onion',
              price: 2.5,
            ),
          ),
          const ProductSections(
            discreption: 'Fresh Root Vegetables',
            discount: 5,
            texttitle: 'Root Vegetabels',
            productcard: PruductCard(
              image: 'assets/images/veg2.png',
              product_name: 'BTaTa',
              price: 2.5,
            ),
          ),
        ]);
  }
}
