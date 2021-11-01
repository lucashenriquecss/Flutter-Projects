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
          Editor(_controladorCampoNumeroConta, 'Numero da conta', '0000'),
          Editor(_controladorCampoValor, 'Valor', '0.00', Icons.monetization_on),
          
          ElevatedButton(
            child: Text('Confirmar'),
            onPressed: () {
              debugPrint('clicou no confirmar');
              final int? numeroConta =
                  int.tryParse(_controladorCampoNumeroConta.text);
              final double? valor =
                  double.tryParse(_controladorCampoValor.text);

              if (numeroConta != null && valor != null) {
                final transferenciaFeita = Transferencia(valor, numeroConta);
                debugPrint('$transferenciaFeita');
              }
            },
          ),
        ],
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  Editor({this.controlador, this.rotulo, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(icon:Icon(icone),labelText: rotulo, hintText: dica),
        keyboardType: TextInputType.number,
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
