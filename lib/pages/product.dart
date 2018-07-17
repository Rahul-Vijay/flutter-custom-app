import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('This action cannot be undone!'),
            actions: <Widget>[
              FlatButton(
                child: new Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: new Text('Continue'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('Back button pressed!');
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: AppBar(
            title: new Text(title),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(padding: EdgeInsets.all(10.0), child: new Text(title)),
              Container(
                padding: EdgeInsets.all(10.0),
                child: new RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: new Text('Delete'),
                  onPressed: () => _showWarningDialog(context),
                ),
              )
            ],
          ),
        ));
  }
}
