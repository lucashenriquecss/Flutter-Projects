import 'package:flutter/material.dart';
import 'package:bytebank/widgets/navdrawer.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: '0000'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            child: Text('Confirmar'),
            onPressed: () {
              debugPrint('clicou no confirmar');
              final int? numeroConta=int.tryParse(_controladorCampoNumeroConta.text);
              final double? valor = double.tryParse(_controladorCampoValor.text);

              if (numeroConta != null && valor != null) {
                final transferenciaFeita = Transferencia(valor, numeroConta);
                debugPrint('$transferenciaFeita');
                 ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$transferenciaFeita'),
                      
                    ),
                  );
              }
            },      
          ),
        ],
      ),
    );
  }
}



class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numeroConta}';
  }
}
