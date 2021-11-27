import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misiontic_template/domain/use_case/controllers/data_controller.dart';

class DetailsScreen extends StatelessWidget {
  final DataController controller = Get.find();
  DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(controller.selected));
  }
}
