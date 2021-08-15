import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_app_build/models/app_user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user obj based on FirebaseUser
  AppUser? _userFromFirebaseUser(User user){
    return user !=null ? AppUser(uid: user.uid) : null ;
  }

  // Auth change user stream
  Stream<AppUser?> get user{
    return _auth.authStateChanges()
        .map((user) => _userFromFirebaseUser(user!));
  }




  // sign in anno
Future signInAnon() async{
  try{
    UserCredential result =  await _auth.signInAnonymously();
    User? user = result.user;
    return _userFromFirebaseUser(user!);
  }catch(e){
    print(e.toString());
    return null;
  }
}


  // sign in with email & password

  // register with email & password

  // sign out
  Future signout() async{
    try{
      return await _auth.signOut();
    }catch(error){
      print(error.toString());
      return null;
    }
  }

}