import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/auth_controller.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';
import 'package:misiontic_template/domain/use_case/controllers/theme_controller.dart';
import 'package:misiontic_template/presentation/pages/content/screens/content_screen.dart';
import 'package:misiontic_template/presentation/pages/content/screens/widgets/new_item.dart';
import 'package:misiontic_template/presentation/widgets/appbar.dart';

class ContentPage extends StatelessWidget {
  final ThemeController controller = Get.find();
  final AuthController _authController = Get.find();
  final DataController _controller = Get.find();
  ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controller: controller,
        tile: Text("Hola ${_authController.name}"),
        context: context,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: ContentScreen(
            controller: _controller,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.dialog(
            const ItemDialog(),
          );
        },
      ),
    );
  }
}
