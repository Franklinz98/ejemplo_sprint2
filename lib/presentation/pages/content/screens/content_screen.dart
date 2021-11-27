import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';

class ContentScreen extends StatelessWidget {
  final DataController controller;

  const ContentScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => ListView.separated(
          itemCount: controller.data.length,
          itemBuilder: (context, index) {
            String item = controller.data[index];
            return Dismissible(
              key: ValueKey('Item$index'),
              child: ListTile(
                title: Text(item),
                onTap: () {
                  controller.select = index;
                  Get.toNamed('/details');
                },
              ),
              onDismissed: (direction) => controller.deleteItem(index),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
