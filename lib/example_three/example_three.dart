import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/example_three/example_three_controller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  final controller = Get.put(ExampleThreeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Three"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notification"),
              Obx(() {
                return Switch(
                    value: controller.notification.value,
                    onChanged: (value) {
                      print(value);
                      controller.setNotification(value);
                    });
              }),
            ],
          ),
        ],
      ),
    );
  }
}
