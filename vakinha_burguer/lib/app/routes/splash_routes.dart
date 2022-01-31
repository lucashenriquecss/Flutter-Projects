import 'package:get/get.dart';
import 'package:vakinha_burguer/app/models/splash/splash_page.dart';

class SplashRouters {
  SplashRouters._();
  static final routers = <GetPage>[
    GetPage(name: '/', page: ()=> const SplashPage(),
    )
  ]; // rota nomeada
}
