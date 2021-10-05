import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
   final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
   
  };

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Login',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
        ),
      home:LoginPage(),
      routes: routes,
  );
  }
}

