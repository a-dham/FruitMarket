import 'package:flutter/material.dart';
import 'package:fruits/features/core/utils/constant.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DETAILS'),
        backgroundColor: kmaincolor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        //controller: controller,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Image.asset(
              'assets/images/veg3.png',
            ),
          )
        ]),
      ),
    );
  }
}
