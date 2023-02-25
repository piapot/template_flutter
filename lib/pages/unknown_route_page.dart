import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailwind_colors/tailwind_colors.dart';
import 'package:niku/namespace.dart' as n;

class UnknownRoutePage extends StatelessWidget {
  const UnknownRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: n.Row([
        n.Column([
          n.Text("Unknown Route Page")..fontSize = 24,
          n.Button(
            n.Text("Go back"),
            onPressed: () => Get.back(),
          )
            ..px = 16
            ..py = 8
            ..my = 10
            ..fontSize = 16
            ..bold
            ..color = TWColors.blue
            ..splash = TWColors.blue.withOpacity(0.1)
        ])
          ..center,
      ])
        ..center
        ..safeArea,
    );
  }
}
