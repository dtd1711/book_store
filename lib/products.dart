import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List<String> products;
  Product(this.products){
    print('[Product Widget] Contructor');
  }
  @override
  Widget build(BuildContext context) {
    print('[Product Widget] build()');
    return Column(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Text(element)
                ],
              ),
            ),
          ) .toList(),
      );
  }
}