import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen One"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * .7,
          color: Colors.amber,
          child: Center(
            child: Text("FirstScreen"),
          ),
        ));
  }
}
