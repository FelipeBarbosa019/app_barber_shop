import 'package:app_barber/home/home_page.dart';
import 'package:app_barber/login/bindings/login_binding.dart';
import 'package:app_barber/login/page/create_account_page.dart';
import 'package:app_barber/login/page/forgot_password_page.dart';
import 'package:app_barber/login/page/forgot_password_token_page.dart';
import 'package:app_barber/login/routes/login_routes.dart';
import 'package:get/get.dart';

class TestePage {
  static final PAGES = <GetPage>[
    GetPage(
      name: LoginRoutes.LOGIN_PAGE,
      page: () => const ForgotPasswordTokenPage(),
    ),
    GetPage(
      name: LoginRoutes.FORGOT_PASSWORD,
      page: () => const ForgotPasswordPage(),
    ),
    GetPage(
      name: LoginRoutes.CREATE_ACCOUNT,
      page: () => const CreateAccountPage(),
    ),
    GetPage(
      name: LoginRoutes.FORGOT_PASSWORD_TOKEN,
      page: () => const ForgotPasswordTokenPage(),
    ),
    GetPage(
      name: LoginRoutes.HOME,
      page: () => const HomePage(),
      binding: LoginBinding(),
    ),
  ];
}
