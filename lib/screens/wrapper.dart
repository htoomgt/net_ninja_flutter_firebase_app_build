import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/models/app_user.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_app_build/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_app_build/screens/utils/error.dart';
import 'package:flutter_firebase_app_build/screens/utils/loading.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
    Wrapper({
    required this.pageName,
    this.authUser,
    Key? key}) : super(key: key);

  String pageName;
  dynamic? authUser;

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  // User? authUser;



  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<AppUser>(context);
    // print(user);
    print(widget.authUser);


    if(widget.pageName == "ERROR"){
      return ErrorPage(strError: "Error");
    }
    else{
      if(widget.authUser == null){

        return Authenticate();
      }
      else{
        return Home();
      }
    }




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
