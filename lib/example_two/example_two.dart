import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/example_two/example_two_controller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  final ExampleTwoController controller = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Two"),
      ),
      body: Column(
        children: [
          Obx(() {
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            );
          }),
          Obx(() {
            return Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                });
          })
        ],
      ),
    );
  }
}
