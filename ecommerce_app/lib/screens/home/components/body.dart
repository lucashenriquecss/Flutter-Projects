import 'package:ecommerce_app/models/Products.dart';
import 'package:ecommerce_app/screens/details/detail_screen.dart';
import 'package:ecommerce_app/screens/home/components/cattegories.dart';
import 'package:flutter/material.dart';
import 'item_card.dart';

class BodyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Food Market",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)
            
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20.0),
            child:  GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context,index) => ItemCard(
                product: products[index],
                press:() =>Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailScreen(product:products[index],)
                )), 
                )
              ),           
            ),
        )
      ],
    );
  }
}