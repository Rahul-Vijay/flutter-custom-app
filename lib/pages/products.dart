import 'package:flutter/material.dart';

import '../product_manager.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManager());
  }
}
