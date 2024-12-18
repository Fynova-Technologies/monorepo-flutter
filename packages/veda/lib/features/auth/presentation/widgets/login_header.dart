import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Picture(
          source: Asset.icons.logo,
          height: screenHeight(context) / 28,
        ),
        SizedBox(height: screenHeight(context) / 70),
        Text(
          "Please fill your login details",
          style: textTheme(context)
              .bodySmall
              ?.copyWith(color: Colors.white, fontSize: 8),
        ),
      ],
    );
  }
}
