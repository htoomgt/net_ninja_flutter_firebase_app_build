import 'package:flutter/material.dart';
import 'package:flutter_firebase_app_build/models/app_user.dart';
import 'package:flutter_firebase_app_build/services/auth.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  const Register({
    required this.toggleView,
    Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth =  AuthService();
  final _formKey = GlobalKey<FormState>();

  // text field state
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Sign Up To Brew Crew"),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text("Sign In"),
              onPressed: (){
                widget.toggleView();
              },

            )
          ],
        ),
        body: Container(
          padding : EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child : Form(
            key : _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val){
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  validator: (val) => val!.length < 6 ? 'Enter a password with 6 characters long' : null,
                  obscureText: true,
                  onChanged: (val){
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                    color: Colors.pink[400],
                    child : Text(
                        "Register",
                        style : TextStyle(
                            color: Colors.white
                        )
                    ),
                    onPressed: () async {
                      if(_formKey.currentState!.validate()){
                        dynamic? result = await _auth.registerWithEmailAndPassword(email, password);

                        if(result == null){
                          setState(() {
                            error = "Please supply valid email!";
                          });
                        }
                        else{

                        }

                      }
                    }),
                SizedBox(height: 20.0),
                Text(
                  error,
                  style : TextStyle(color: Colors.red, fontSize: 14.0,)
                )
              ],
            ),
          ),
        )
    );
  }
}
