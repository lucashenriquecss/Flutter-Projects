import 'package:flutter/material.dart';
import 'package:bytebank/widget/nav_drawer.dart';


class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('home'),
      ),
    );
  }
}


