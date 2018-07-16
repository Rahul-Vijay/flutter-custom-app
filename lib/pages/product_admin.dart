import 'package:flutter/material.dart';

import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              new AppBar(
                automaticallyImplyLeading: false,
                title: new Text('Choose'),
              ),
              new ListTile(
                title: new Text('All Products'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/admin');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: new Text('Manage product'),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.create),
                text: 'Create Product',
              ),
              new Tab(
                icon: new Icon(Icons.list),
                text: 'My Product(s)',
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            ProductCreatePage(),
            ProductListPage(),
          ],
        ),
      ),
    );
  }
}
