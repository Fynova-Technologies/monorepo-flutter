import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:veda_components/veda_componenets.dart';

class SkipButton extends StatelessWidget {
  final String path;
  const SkipButton({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(path);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Skip',
            style: textTheme(context).bodyMedium?.copyWith(
                color: colorScheme(context).background,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.arrow_forward,
            color: colorScheme(context).background,
            size: 18,
            weight: 28,
          ),
        ],
      ),
    );
  }
}
