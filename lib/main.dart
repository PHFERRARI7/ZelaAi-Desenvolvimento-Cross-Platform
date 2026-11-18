import 'dart:ui';

import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ZelaAiApp());
}

class ZelaAiApp extends StatelessWidget {
  const ZelaAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zela Aí',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      scrollBehavior: const ZelaScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}

class ZelaScrollBehavior extends MaterialScrollBehavior {
  const ZelaScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.stylus,
      };
}
