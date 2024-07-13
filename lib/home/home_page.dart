import 'package:app_barber/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/theme.dart';

class HomePage extends GetView<LoginController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
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
      body: const Center(
        child: Text(
          'Conteúdo da Página Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
