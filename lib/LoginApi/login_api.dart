import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/LoginApi/login_api_controller.dart';

class LoginApi extends StatefulWidget {
  const LoginApi({super.key});

  @override
  State<LoginApi> createState() => _LoginApiState();
}

class _LoginApiState extends State<LoginApi> {
  final controller = Get.put(LoginApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Api"),
      ),
      body: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.emailController.value,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.purple,
                      ),
                      hintText: 'Email',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: Get.height * .03,
                ),
                TextFormField(
                  controller: controller.passwordController.value,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.purple,
                      ),
                      hintText: 'Password',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: Get.height * .03,
                ),
                FilledButton(
                  onPressed: () {
                    controller.loginApi();
                  },
                  style: FilledButton.styleFrom(
                      fixedSize: Size(Get.width * 0.9, Get.height * 0.06)),
                  child: Obx(() {
                    return controller.loading.value
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text("Login");
                  }),
                )
              ],
            ),
          )),
    );
  }
}
