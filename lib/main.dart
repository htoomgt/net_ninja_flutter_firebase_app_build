import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/screens/authenticate/authenticate.dart';
import 'package:flutter_firebase_app_build/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_app_build/screens/utils/loading.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);


  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future : _initialization,
      builder : (context, snapshot){
        if(snapshot.hasError){
          return Wrapper(pageName: "ERROR");
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Wrapper(pageName: "WRAPPER");
        }

        return Wrapper(pageName : "LOADING");

      }
    );
  }
}






