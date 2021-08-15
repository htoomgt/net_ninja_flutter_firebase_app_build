import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title : Text('Loading Page')
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text('Loading......'),
          ),
        ),
      ),
    );
  }
}
