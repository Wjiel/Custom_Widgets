import 'package:custom_widgetes/Button/custom_eleveted_button.dart';
import 'package:custom_widgetes/Button/custom_eleveted_icon_button.dart';
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: CustomElevetedIconButton(
            color: Colors.pink,
            text: 'Нажми',
            function: () {},
            radius: 30,
            icon: const Icon(
              size: 40,
              Icons.chevron_right,
              color: Colors.white,
            ),
          ),
        ),
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
