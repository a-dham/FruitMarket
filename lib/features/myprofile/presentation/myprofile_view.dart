import 'package:flutter/material.dart';
import 'package:fruits/features/myprofile/presentation/myprofile_view_body.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyProfileViewBody(),
    );
  }
}
