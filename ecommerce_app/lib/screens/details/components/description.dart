import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Products.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({ Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
      
    );
  }
}