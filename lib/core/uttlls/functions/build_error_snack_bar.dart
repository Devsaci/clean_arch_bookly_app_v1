import 'package:flutter/material.dart';

SnackBar buildErrorWidget(String errMessage) {
  return SnackBar(
    duration: const Duration(seconds: 4),
    content: Text(errMessage),
    backgroundColor: Colors.yellowAccent,
    action: SnackBarAction(
      label: 'RETRY',
      onPressed: () {
        // Place your error-handling function here.
      },
    ),
  );
}
