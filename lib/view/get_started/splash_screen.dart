import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/controller/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Scaffold(
      body: Text("Hii"),
    );
  }
}
