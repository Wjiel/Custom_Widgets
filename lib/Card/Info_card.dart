import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_widgetes/main.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String url;
  final String name;
  final String description;
  final Color color;

  const InfoCard({
    super.key,
    required this.url,
    required this.name,
    required this.description,
    required this.color,
  });

  final double _radius = 20;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5 + 3 * (size.width / 1080)),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(_radius),
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          width: size.width,
          padding: EdgeInsets.only(
            bottom: 5 + 10 * (size.width / 1080),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(_radius),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      url,
                    ),
                  ),
                ),
                width: size.width,
                height: 80 + 130 * (size.width / 1080),
              ),
              SizedBox(
                height: 5 + 10 * (size.width / 1080),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 5 + 10 * (size.width / 1080)),
                child: AutoSizeText(
                  name,
                  style: themeData().textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 5 + 10 * (size.width / 1080)),
                child: Text(
                  description,
                  maxLines: 1,
                  style: themeData().textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
