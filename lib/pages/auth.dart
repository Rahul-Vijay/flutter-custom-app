import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('Sign In')),
      body: Center(
        child: RaisedButton(
          child: new Text('Sign In'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Products()),
            );
          },
        ),
      ),
    );
  }
}
