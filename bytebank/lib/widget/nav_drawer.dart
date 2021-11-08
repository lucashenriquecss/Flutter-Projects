import 'package:bytebank/screens/home/home.dart';
import 'package:bytebank/screens/login/login_screen.dart';
import 'package:bytebank/screens/transfer_forms/transfer_form.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/transfer_lists/transfer_list.dart';

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
              color: Colors.deepOrange,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                return Home();
              }))
            },
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text('Extrato'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                return ListaTransferencias();
              }))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                return LoginPage();
              }))
            },
          ),
        ],
      ),
    );
  }
}
