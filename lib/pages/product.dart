import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Product Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Container(padding: EdgeInsets.all(10.0), child: new Text('Details')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: new RaisedButton(
              color: Theme.of(context).accentColor,
              child: new Text('Back'),
              onPressed: () => Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}
