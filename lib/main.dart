import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_app_build/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_app_build/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_firebase_app_build/models/app_user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      App()
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);


  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();



  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthService().user,
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return MaterialApp(home: Wrapper(pageName: "LOADING"));
          }
          if(!snapshot.hasData){
            return MaterialApp(home: Wrapper(pageName: "ERROR"));
          }

          if (snapshot.connectionState == ConnectionState.done) {

          }

          return MaterialApp(home: Wrapper(pageName: "WRAPPER", authUser: snapshot.data));

        }
    );
  }
}
// Wrapper(pageName: "WRAPPER");






