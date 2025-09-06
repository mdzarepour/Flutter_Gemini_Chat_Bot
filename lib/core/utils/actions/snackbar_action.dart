import 'package:flutter/material.dart';

class SnackbarAction {
  static void showSnackbar(BuildContext context, String content) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(duration: Duration(milliseconds: 700), content: Text(content)),
    );
  }
}
