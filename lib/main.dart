import 'package:flutter/material.dart';
import 'pages/get_started/get_started_screen.dart';
import 'shared/style/theme_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klay App',
      theme: ThemeManager.lightTheme,
      home: const GetStartedScreen(),
    );
  }
}
