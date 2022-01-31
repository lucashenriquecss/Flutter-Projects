import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burguer/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burguer/app/routes/splash_routes.dart';

void main() {
  runApp(const VakinhaBurguerApp());
}
class VakinhaBurguerApp extends StatelessWidget {
  const VakinhaBurguerApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Vakinha Burguer",
      theme: VakinhaUI.theme,
      getPages: [
        ...SplashRouters.routers,
      ],
    );
  }
}