import 'package:bytebank/screens/home/home.dart';
import 'package:bytebank/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/widget/nav_drawer.dart';
import 'package:bytebank/screens/transfer_lists/transfer_list.dart';
import 'package:bytebank/screens/transfer_forms/transfer_form.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
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
      
      home: LoginPage(),
    );
  }
}
