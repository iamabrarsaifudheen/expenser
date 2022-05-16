import 'package:expenser/screens/authentication/sign_in/sign_in.dart';
import 'package:expenser/screens/authentication/sign_up/sign_up.dart';
import 'package:expenser/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        fontFamily: 'Montserrat',
        primaryColor: const Color(0xff2A979B),
      ),
      home: const Home(),
    );
  }
}

