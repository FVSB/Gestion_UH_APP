import 'package:flutter/material.dart';

class FormSupportController {
  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void navigateToSupportMain() {
    Navigator.pop(context);
  }

  void submitReport() {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Reporte enviado!')));
    navigateToSupportMain();
  }
}
