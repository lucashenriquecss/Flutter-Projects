
import 'package:ecommerce_app/screens/details/components/add_product.dart';
import 'package:ecommerce_app/screens/details/components/description.dart';
import 'package:ecommerce_app/screens/details/components/favorite_btn.dart';
import 'package:ecommerce_app/screens/details/components/image_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Products.dart';


class BodyDetails extends StatelessWidget {
  final Product product;
  const BodyDetails({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[                    
                      SizedBox(height: 20.0 / 2),
                      Description(product: product),
                      SizedBox(height: 20.0 / 2),
                      FavoriteBtn(),
                      SizedBox(height: 20.0 / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ImageProduct(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}