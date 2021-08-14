import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child : SignIn(),
    );
  }
}
