
import 'package:ecommerce_app/screens/home/home.dart';
import 'package:flutter/material.dart';


void main() => runApp(Appshopp());

class Appshopp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( 
             
        primarySwatch: Colors.deepOrange,
          
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary
        ),
      ),
      
      home:Home(),

      
    );
  }
}