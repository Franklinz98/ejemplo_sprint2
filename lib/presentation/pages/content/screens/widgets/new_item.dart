import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';

class ItemDialog extends StatefulWidget {
  const ItemDialog({Key? key}) : super(key: key);

  @override
  createState() => _State();
}

class _State extends State<ItemDialog> {
  late DataController controller;
  late TextEditingController itemController;

  @override
  void initState() {
    super.initState();
    controller = Get.find();
    itemController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Añadir Elemento",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: TextField(
                controller: itemController,
                keyboardType: TextInputType.multiline,
                // dynamic text lines
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Texto',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      child: const Text("Añadir"),
                      onPressed: () {
                        var text = itemController.text;
                        if (text.isNotEmpty) {
                          controller.addItem = itemController.text;
                          Get.back();
                        }
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    itemController.dispose();
    super.dispose();
  }
}
