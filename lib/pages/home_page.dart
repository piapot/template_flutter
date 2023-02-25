import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailwind_colors/tailwind_colors.dart';
import 'package:niku/namespace.dart' as n;

import 'package:template_flutter/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: n.Row([
        n.Column([
          n.Text("Home Page")..fontSize = 24,
          n.Button(
            n.Text('Go to unknown route page'),
            onPressed: () => Get.toNamed(Routes.unknownRoute),
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
