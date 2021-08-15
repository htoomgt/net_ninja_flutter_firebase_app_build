import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    required this.strError,
    Key? key}) : super(key: key);
  final String strError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text("Error Page")
      ),
      body: Center(
        child: Text(strError, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      )
    );
  }
}
