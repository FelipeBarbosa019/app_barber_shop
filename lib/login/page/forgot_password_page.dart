import 'package:app_barber/login/routes/login_routes.dart';
import 'package:app_barber/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Oculta o teclado quando o usuário toca fora dele
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: colorPrimary, // alterei para uma cor para testes
        appBar: AppBar(
          backgroundColor: colorPrimary, // alterei para uma cor para testes
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Esqueceu a senha ?',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const Spacer(),
              Image.asset(
                'assets/lock_icon.png',
                width: 150,
                height: 150,
              ),

              const Spacer(),
              const Text(
                'Digite seu e-mail para o processo de verificação, enviaremos um código de 4 dígitos para seu e-mail.',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const Spacer(), // Adiciona um espaçamento flexível
              TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.black,
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(LoginRoutes.FORGOT_PASSWORD_TOKEN);
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
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Enviar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
