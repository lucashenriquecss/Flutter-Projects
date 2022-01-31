import 'package:flutter/material.dart';

//PAGINA INICIAL
class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text('splash'),),
      body: Container(),
    );
  }
}