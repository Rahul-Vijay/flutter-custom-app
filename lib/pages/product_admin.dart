import 'package:flutter/material.dart';

import './products.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            new AppBar(
              automaticallyImplyLeading: false,
              title: new Text('Drawer 1'),
            ),
            new ListTile(
              title: new Text('Back to product list'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Products(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(title: new Text('Manage product')),
      body: Center(
        child: new Text('On the product manager page'),
      ),
    );
  }
}
