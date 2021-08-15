import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    required this.strError,
    Key? key}) : super(key: key);
  final String strError;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(strError),
    );
  }
}
