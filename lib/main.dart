import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_app_build/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_app_build/screens/utils/loading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Brew Crew",
      home : Wrapper(),
    );
  }
}



