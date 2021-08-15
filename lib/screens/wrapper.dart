import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_app_build/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_app_build/screens/utils/error.dart';
import 'package:flutter_firebase_app_build/screens/utils/loading.dart';

class Wrapper extends StatefulWidget {
    Wrapper({
    required this.pageName,
    Key? key}) : super(key: key);

  String pageName;

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  User? authUser;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Brew Crew",
      home : Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text(getPageTitle(widget.pageName))
        ),
        body: LayoutBuilder(
          builder: (context, constraints){
            switch(widget.pageName){
              case "ERROR":{
                return ErrorPage(strError: "Firebase Initialization Error");
              }break;

              case "WRAPPER":{
                return Authenticate();
              }break;

              case "LOADING":{
                return Loading();
              }break;
              default:{
                return Authenticate();
              }

            }
          }
        )
      )
    );
  }

  String getPageTitle(String pageName){
    switch(pageName){
      case "ERROR" : {
        return "Error Page";
      }break;
      case "Wrapper" : {
        return "Sign or home page";
      }break;
      case "ERROR" : {
        return "Error Page";
      }break;
      default:{
        return "Sign IN To The Brew Crew";
      }
    }

  }
}
