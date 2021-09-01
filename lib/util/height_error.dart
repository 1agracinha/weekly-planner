import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weekly_planner/util/function_util.dart';

class HeightErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FunctionUtil.clearList();
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          Container(
            child: Lottie.asset("assets/animations/render_error.json"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Desculpa :( \n Visualização não disponível para dispositivos com altura inferior a 430px",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF8600A8), fontSize: 18),
            ),
          )
        ],
      )),
    );
  }
}
