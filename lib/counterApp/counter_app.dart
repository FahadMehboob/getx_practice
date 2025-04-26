import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/counterApp/counter_controller.dart';

class CounterApp extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.counter.toString(),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
