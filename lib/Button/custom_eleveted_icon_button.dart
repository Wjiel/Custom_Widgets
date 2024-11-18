import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_widgetes/main.dart';
import 'package:flutter/material.dart';

class CustomElevetedIconButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function function;
  final double radius;
  final Widget icon;
  const CustomElevetedIconButton({
    super.key,
    required this.color,
    required this.text,
    required this.function,
    required this.radius,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        function();
      },
      borderRadius: BorderRadius.circular(radius),
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        width: size.width,
        height: 40 + 60 * (size.width / 1080),
        padding:
            EdgeInsets.symmetric(horizontal: 10 + 20 * (size.width / 1080)),
        child: Stack(
          children: [
            Center(
              child: AutoSizeText(
                text,
                style: themeData().textTheme.headlineMedium,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
