import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  late TextEditingController _textController;
  late AuthController _controller;
  late String _inputText;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _controller = Get.find();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Ingresa tu nombre',
            ),
            onChanged: (String text) {
              _inputText = text;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_inputText.isNotEmpty) {
                  _controller.userName = _inputText;
                  Get.offNamed('/content');
                }
              },
              child: const Text('Iniciar Sesión')),
        ],
      ),
    );
  }
}
