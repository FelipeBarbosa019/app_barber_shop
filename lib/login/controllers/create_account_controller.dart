import 'package:app_barber/shared/auth_service_firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final AuthFirebase _authFirebase = AuthFirebase();

  var obscurePasswordText = true.obs;
  var obscureConfirPassowdText = true.obs;

  void toggleObscurePassowdText() {
    obscurePasswordText.toggle();
  }

  void toggleObscureConfirmPassowdText() {
    obscureConfirPassowdText.toggle();
  }

  void registerUserFirebase(
      {required String email, required String passowrd}) async {
    try {
      _authFirebase.registerUser(email: email, password: passowrd);
    } catch (error) {
      // ignore: avoid_print
      print('Erro ao cadastrar usuário: $error');
    }
  }
}
