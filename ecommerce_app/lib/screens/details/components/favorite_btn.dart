import 'package:ecommerce_app/screens/details/components/counter_product.dart';
import 'package:flutter/material.dart';

class FavoriteBtn extends StatelessWidget {
  const FavoriteBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductCounter(),
        //Se quiser adicionarmais algo       
      ],
    );
  }
}