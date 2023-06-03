import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final isLoading = false.obs;

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  Future<void> login() async {
    isLoading.value = true;

    // Simulate API call to validate login credentials
    await Future.delayed(Duration(seconds: 2));

    // Simulated login success
    if (email.value == 'user' && password.value == '123') {
      // Navigate to home screen
      Get.offAllNamed('/home');
    } else {
      // Show error message or handle invalid login
      Get.snackbar(
        'Error',
        'Invalid email or password',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }

    isLoading.value = false;
  }
}
