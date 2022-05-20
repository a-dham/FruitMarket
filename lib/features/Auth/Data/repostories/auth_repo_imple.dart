// import 'package:flutter/cupertino.dart';
// import 'package:fruits/features/Auth/Domain/repository/auth_repo.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthRepoImpl extends AuthRepo {
//   @override
//   Future CompleteIformationLogin({
//     required String name,
//     required int phonenumber,
//     @required String? address,
//     required String email,
//   }) {
//     throw UnimplementedError();
//   }

//   @override
//   Future LoginwithFaceBook() {
//     throw UnimplementedError();
//   }

//   @override
//   Future LoginwithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);

//     throw UnimplementedError();
//   }
// }
