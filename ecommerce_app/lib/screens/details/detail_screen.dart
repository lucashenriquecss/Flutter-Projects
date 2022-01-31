import 'package:ecommerce_app/models/Products.dart';

import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: Navbar(context),
      body: BodyDetails(product: product),
    );
  }
   AppBar Navbar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(icon: Icon(
          Icons.arrow_back
          ),
          onPressed: () => Navigator.pop(context),
        ),

        actions: <Widget>[        
          IconButton(  
          icon: Icon(  
            Icons.shopping_cart,
            color: Colors.black,
            ),
          onPressed: () {  },
        ),
        SizedBox(width: 20.0 / 2,)

      ],
    );
  }

  
}
