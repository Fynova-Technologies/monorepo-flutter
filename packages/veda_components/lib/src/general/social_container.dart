import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';

class SocialContainer extends StatelessWidget {
  final String source;
  final double? height;
  final bool isLoading;
  const SocialContainer({
    super.key,
    required this.source,
    this.height = 40,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                  color: Colors.black.withOpacity(0.55))
            ]),
        child: isLoading
            ? Padding(
                padding: EdgeInsets.all(8),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      colorScheme(context).background),
                ),
              )
            : Center(
                child: Picture(
                source: source,
                height: 18,
              )));
  }
}
