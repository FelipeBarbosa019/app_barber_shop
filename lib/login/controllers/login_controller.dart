import 'package:app_barber/login/routes/login_routes.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var obscureText = true.obs;

  void toggleObscureText() {
    obscureText.toggle();
  }

  void signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        Get.toNamed(LoginRoutes.HOME);
        print('Usuário logado com sucesso: ${googleSignInAccount.displayName}');
      } else {
        print('Login cancelado pelo usuário.');
      }
    } catch (error) {
      print('Erro durante o login: $error');
    }
  }
}
