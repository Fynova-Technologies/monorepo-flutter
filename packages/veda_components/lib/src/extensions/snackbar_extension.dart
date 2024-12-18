import 'package:flutter/material.dart';

extension SnackbarExtension on BuildContext {
  void showSnackBar(
      {required String message, bool isError = true, bool showIcon = true}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showIcon
                ? Icon(
                    isError
                        ? Icons.error_outline_rounded
                        : Icons.check_circle_outline_rounded,
                    color: Colors.white,
                  )
                : const SizedBox(),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                message,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(this).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontSize: 15,
                    ),
              ),
            ),
          ],
        ),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
