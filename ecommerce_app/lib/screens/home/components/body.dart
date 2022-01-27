import 'package:ecommerce_app/screens/home/components/cattegories.dart';
import 'package:flutter/material.dart';

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
      ],
    );
  }
}