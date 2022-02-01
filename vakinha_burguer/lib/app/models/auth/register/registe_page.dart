import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:vakinha_burguer/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burguer/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:vakinha_burguer/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burguer/app/core/ui/widgets/vakinha_text.dart';
import 'package:get/get.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cadastro",
                        style: context.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.theme.primaryColorDark),
                      ),
                      Text(
                        'Preencha os campos abaixo para criar o seu cadastro',
                        style: context.textTheme.bodyText1,
                        ),
                      SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'Nome'),
                      SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'E-mail'),
                      SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'Senha'),
                      SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'Confirmar senha*'),
                      SizedBox(
                        height: 80,
                      ),
                      Center(
                        child: VakinhaButton(
                            width: context.width,
                            label: 'Cadastrar',
                            onPressed: () {}),
                      ),                                      
                    ],
                  )),
                ),
              ),
            )
        );
      
  }
}