import 'package:expenser/authenticate.dart';
import 'package:expenser/models/user.dart';
import 'package:expenser/screens/authentication/sign_in/email_sign_in.dart';
import 'package:expenser/screens/authentication/sign_in/sign_in.dart';
import 'package:expenser/screens/authentication/sign_up/sign_up.dart';
import 'package:expenser/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    // listener for auth state
    if (user == null) {
      print("user sign out");
      return  Authenticate(); // or the sign in view
    } else {
      print(user.uid);
      print("user sign in");
      return const Home();
      // home screen with the user as argument for easier access in the future
    }
  }
}
