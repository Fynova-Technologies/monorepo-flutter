import 'package:flutter/material.dart';

class DropShadowBox extends StatelessWidget {
  const DropShadowBox({
    required this.child,
    this.backgroundColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(4)),
    super.key,
  });

  final Widget child;
  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor ?? Theme.of(context).colorScheme.background,
        border: Border.all(
            color: Colors.white, strokeAlign: BorderSide.strokeAlignOutside),
        boxShadow: [
          BoxShadow(
              offset: const Offset(2, 2),
              color: const Color(0xff728EAB).withOpacity(0.1),
              blurRadius: 4),
          const BoxShadow(
              offset: Offset(-6, -6), color: Colors.white, blurRadius: 10),
          BoxShadow(
              offset: const Offset(4, 4),
              color: const Color(0xff6F8CB0).withOpacity(0.41),
              blurRadius: 10),
        ],
      ),
      child: child,
    );
  }
}
