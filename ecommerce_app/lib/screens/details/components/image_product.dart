import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Products.dart';

class ImageProduct extends StatelessWidget {
  final Product product;
  const ImageProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[         
          Text(
            product.title,
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              )),
              SizedBox(width: 20.0),
              Expanded(child: Hero(
                tag: "${product.id}", 
                child: Image.asset(
                  product.image,
                  fit:BoxFit.fill
                ),
                ))
            ],
          )
        ],
      ),
    );
  }
}
