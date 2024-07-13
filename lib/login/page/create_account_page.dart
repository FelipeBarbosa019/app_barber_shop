import 'package:app_barber/login/controllers/create_account_controller.dart';
import 'package:app_barber/login/routes/login_routes.dart';
import 'package:app_barber/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountPage extends GetView<CreateAccountController> {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorPrimary,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: colorPrimary,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/barbearia.png',
                      width: 200,
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(LoginRoutes.FORGOT_PASSWORD);
                        },
                        child: const Text(
                          'Para criar sua conta insira os dados abaixo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: controller.emailController,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.black,
                        labelStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Obx(() => TextField(
                          controller: controller.passwordController,
                          obscureText: controller.obscurePasswordText.value,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            filled: true,
                            fillColor: Colors.black,
                            labelStyle: const TextStyle(color: Colors.white),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.obscurePasswordText();
                              },
                              icon: Icon(
                                controller.obscurePasswordText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                    Obx(() => TextField(
                          controller: controller.confirmPasswordController,
                          obscureText:
                              controller.obscureConfirPassowdText.value,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Confirme a senha',
                            filled: true,
                            fillColor: Colors.black,
                            labelStyle: const TextStyle(color: Colors.white),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.obscureConfirPassowdText();
                              },
                              icon: Icon(
                                controller.obscureConfirPassowdText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 28,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (controller.passwordController.text ==
                                  controller.confirmPasswordController.text &&
                              controller.passwordController.text.isNotEmpty &&
                              controller.emailController.text.isNotEmpty) {
                            controller.registerUserFirebase(
                              email: controller.emailController.text,
                              passowrd:
                                  controller.confirmPasswordController.text,
                            );
                            Get.back();
                            Get.snackbar(
                              'Sucesso',
                              'Usuário cadastrado',
                              backgroundColor: const Color(0xFF099090),
                              colorText: Colors.white,
                            );
                          } else {
                            Get.snackbar(
                              'Erro',
                              'As senhas não correspondem ou falta preencher campos',
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF099090),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Inscreva-se',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
