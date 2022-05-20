import 'package:flutter/material.dart';
import 'package:fruits/features/favourite/presentation/favourite_view_body.dart';

class FavouritView extends StatelessWidget {
  const FavouritView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavouritesViewBody(),
    );
  }
}
