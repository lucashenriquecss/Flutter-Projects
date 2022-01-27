

import 'package:ecommerce_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      body: BodyHome(),
    );
  }
 //Navbar back, carrinho e pesquisa
  AppBar Navbar() {
    return AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        

        actions: <Widget>[
          IconButton(  
            icon: Icon(  
              Icons.search,
              color: Colors.black,
              ),
            onPressed: () {  },
          ),
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
