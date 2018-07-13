import 'package:flutter/material.dart';

import '../product_manager.dart';
import './product_admin.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              new AppBar(
                automaticallyImplyLeading: false,
                title: new Text('Choose'),
              ),
              new ListTile(
                title: new Text('Manage products'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductAdmin()),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager());
  }
}
