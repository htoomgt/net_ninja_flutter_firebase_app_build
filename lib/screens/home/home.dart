import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/services/auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text("Brew Crew Home"),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('Sign out'),
                onPressed: () async{
                  await _auth.signout();
                },
            )
          ]
        ),
        body: Center(
          child: Text("Home page"),
        ),
      )
    );

  }
}

