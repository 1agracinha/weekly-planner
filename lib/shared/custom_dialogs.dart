import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

abstract class CustomDialogs {
  static successOperation({String? text, required BuildContext context}) {
    showDialog(
      barrierColor: Colors.purple.withOpacity(0.2),
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            insetPadding: EdgeInsets.zero,
            elevation: 0,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text ?? "Operação realizada com sucesso! *-*",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Lottie.asset("assets/animations/success.json"),
              ],
            ));
      },
    );
    Future.delayed(Duration(seconds: 2)).then((_) => Get.back());
  }

  static failOperation({String? text, required BuildContext context}) {
    showDialog(
      barrierColor: Colors.purple.withOpacity(0.2),
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text ?? "Operação não realizada! :(",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Lottie.asset("assets/animations/render_error.json"),
              ],
            ));
      },
    );
    Future.delayed(Duration(seconds: 2)).then((_) => Get.back());
  }
}
