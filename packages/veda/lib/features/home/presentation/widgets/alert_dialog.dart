import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';

Future<void> showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Open Camera?',
          style: textTheme(context).bodyMedium,
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Camera has not been implemented yet.'),
              Text('This feature will be made available soon'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'OK',
              style: textTheme(context).bodyMedium,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
