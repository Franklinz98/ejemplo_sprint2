import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/theme_controller.dart';
import 'package:misiontic_template/presentation/pages/authentication/screens/login_screen.dart';
import 'package:misiontic_template/presentation/widgets/appbar.dart';

class AuthPage extends StatelessWidget {
  final ThemeController controller = Get.find();
  AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controller: controller,
        tile: const Text("Autenticación"),
        context: context,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: LoginScreen(),
        ),
      ),
    );
  }
}
