import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final void Function() callback;
  final double height;
  final double width;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;
  final String icon;
  final BoxFit? fit;
  const CustomIconButton({super.key, required this.callback, required this.height, required this.width, this.backgroundColor, this.borderRadius, this.padding, required this.icon, this.fit, this.boxShadow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      onTap: ()=> callback,
      child: Ink(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          boxShadow: boxShadow,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: Image.asset(icon, fit: fit,),
      ),
    );
  }
}
