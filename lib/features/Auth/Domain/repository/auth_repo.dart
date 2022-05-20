// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future LoginwithFaceBook();
  Future LoginwithGoogle();
  Future CompleteIformationLogin({
    required String name,
    required int phonenumber,
    @required String address,
    required String email,
  });
}
