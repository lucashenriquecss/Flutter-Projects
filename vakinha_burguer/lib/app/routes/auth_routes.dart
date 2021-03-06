import 'package:get/get.dart';
import 'package:vakinha_burguer/app/models/auth/login/login_page.dart';
import 'package:vakinha_burguer/app/models/auth/register/registe_page.dart';


class AuthRouters {
  AuthRouters._();

  static final routers = <GetPage>[
      GetPage(name: '/auth/login', page: () => const LoginPage()),
      GetPage(name: '/auth/register', page: () => const RegisterPage()),

  ];
}
