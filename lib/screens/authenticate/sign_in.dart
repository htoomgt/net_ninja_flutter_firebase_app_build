import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({
    required this.toggleView,
    Key? key}) : super(key: key);



  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth =  AuthService();

  // text field state
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign In To Brew Crew"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Register"),
            onPressed: (){
              widget.toggleView();
            },

          )
        ],
      ),
      body: Container(
          padding : EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child : Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  onChanged: (val){
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  onChanged: (val){
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Colors.pink[400],
                  child : Text(
                      "Sign In",
                      style : TextStyle(
                        color: Colors.white
                      )
                  ),
                  onPressed: () async {
                    // await _auth.
                    print(email);
                    print(password);
                })
              ],
            ),
          ),
      )
    );
  }
}


/*RaisedButton(
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
)*/
