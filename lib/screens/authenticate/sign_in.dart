import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth =  AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding : EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child : RaisedButton(
          child : Text('Sign in to brew crew'),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print("We could'nt signed in!");
            }
            else{
              print("signed in");
              print(result.uid);
            }
          },
        )
    );
  }
}
