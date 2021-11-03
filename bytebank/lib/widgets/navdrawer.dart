import 'package:flutter/material.dart';
import 'package:bytebank/widgets/listatransferencia.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Nome do usuario',
              style: TextStyle(color: Colors.white, fontSize: 25),
              
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                
                ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Lista de transferência'),
            onTap: () => {ListaTransferencias(), Navigator.of(context).pop()},
          ),       
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Extrato'),
            onTap: () => {Navigator.of(context).pop()},
          ),       
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {
                           
              Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}