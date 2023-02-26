import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import 'package:template_flutter/routes.dart';
import 'package:template_flutter/pages/unknown_route_page.dart';

void main() {
  runApp(const MyApp());

  if (Platform.isAndroid) {
    const style = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(style);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'template_flutter',
      theme: ThemeData(useMaterial3: true),
      defaultTransition: Transition.cupertino,
      initialRoute: AppPages.initial,
      unknownRoute: GetPage(
        name: Routes.unknownRoute,
        page: () => const UnknownRoutePage(),
      ),
      getPages: AppPages.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
