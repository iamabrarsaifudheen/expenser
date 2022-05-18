import 'package:expenser/models/user.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:expenser/services/auth.dart';
import 'package:expenser/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      catchError: (_,__)=>null,
      initialData:null,
      value: AuthService().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: const Color(0xff2A979B),
        ),
        home: const Wrapper(),
        
      ),
    );
  }
}
