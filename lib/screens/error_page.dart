import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('this is Error Page'),
        ),
        body: Center(
          child: Text('this is error Page'),
        ));
  }
}
