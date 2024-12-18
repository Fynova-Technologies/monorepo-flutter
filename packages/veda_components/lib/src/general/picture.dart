/// The `Picture` class is a Flutter widget that displays an SVG image with customizable width, height,
/// and fit.
/// The line `import 'package:flutter/material.dart';` is importing the `material.dart` file from the
/// `flutter` package. This file contains the necessary classes and widgets for building user interfaces
/// in Flutter, such as `MaterialApp`, `Scaffold`, `AppBar`, etc. By importing this file, you can use
/// the classes and widgets defined in it to create your Flutter application.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class Picture extends StatelessWidget {
  const Picture({
    required this.source,
    this.width,
    this.height,
    this.colorFilter,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String source;
  final double? width;
  final double? height;
  final BoxFit fit;
  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      AssetBytesLoader(source, packageName: 'veda_resources'),
      width: width,
      height: height,
      fit: fit,
      colorFilter: colorFilter,
    );
  }
}
