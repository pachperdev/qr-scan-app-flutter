import 'package:flutter/material.dart';
import 'package:qr_scan/screens/screens.dart';
import 'package:qr_scan/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'qr_scan',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'map': (context) => const MapScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}
