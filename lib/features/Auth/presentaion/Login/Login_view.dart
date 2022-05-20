// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/features/Auth/presentaion/Login/widgets/Login_Body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }
}
