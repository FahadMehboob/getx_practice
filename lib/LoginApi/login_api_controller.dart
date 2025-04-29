import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginApiController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  Future<void> loginApi() async {
    try {
      loading.value = true;
      final response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
        headers: {'x-api-key': 'reqres-free-v1'},
      );
      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar('Login Successful', 'Login Successfully Congratulations');
      } else {
        loading.value = false;
        Get.snackbar('Login Failed', 'Login Failed check email password');
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
