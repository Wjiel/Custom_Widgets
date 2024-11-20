import 'package:custom_widgetes/Button/custom_eleveted_icon_button.dart';
import 'package:custom_widgetes/Navigation_Bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: themeData(),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomNavigationBar(),
      body: ListView(
        controller: scrollController,
      ),
    );
  }
}

ThemeData themeData() {
  return ThemeData(
    textTheme: TextTheme(
      headlineMedium: buttonTextStyle(),
    ),
  );
}

TextStyle buttonTextStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}
