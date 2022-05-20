import 'package:flutter/material.dart';
import 'package:fruits/features/onboarding/presentation/onboarding_body.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardBody(),
    );
  }
}
