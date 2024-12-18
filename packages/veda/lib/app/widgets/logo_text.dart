import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:veda_components/veda_componenets.dart';

class LogoText extends StatelessWidget {
  final String imgPath;
  final int duration;
  final double height;
  final double width;

  const LogoText({
    super.key,
    required this.imgPath,
    required this.duration,
    this.height = 60,
    this.width = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [VisibilityEffect(delay: Duration(milliseconds: duration))],
      child: SizedBox(
        height: height,
        width: width,
        child: Picture(
          source: imgPath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
