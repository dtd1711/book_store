import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget{
  final String startingFood;

  ProductManager(this.startingFood);
  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] is createState()');
    return _ProductMangagerState();
  }
}

class _ProductMangagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() {
    print('[_ProductMangagerState] is initState()');
    _products.add(widget.startingFood);
    super.initState();
  }

  void _addProducts (String product){
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[_ProductMangagerState] is build()');
    return Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: ProductControl(_addProducts),
            ),
            Product(_products)
          ],
        );
  }
}