import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/Products.dart';

class Categories extends StatefulWidget {
  
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Geral", "Lanches", "Bebidas", "Sobremesas"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          
            selectedIndex = index;
          
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.blueGrey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0 / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.green : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
