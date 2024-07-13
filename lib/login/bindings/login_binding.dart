import 'package:app_barber/login/controllers/create_account_controller.dart';
import 'package:app_barber/login/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());

    Get.lazyPut<CreateAccountController>(
      () => CreateAccountController(),
      fenix: true,
    );
  }
}
