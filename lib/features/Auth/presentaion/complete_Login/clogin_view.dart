import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/presentaion/complete_Login/widgets/clogin_body.dart';

class CloginView extends StatelessWidget {
  const CloginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: const CloginBody(),
      ),
    );
  }
}
