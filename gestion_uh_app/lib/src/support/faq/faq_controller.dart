import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/form/form_support_page.dart';

class FaqController {
  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void navigateToSupportForm() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormSupportPage()),
    );
  }
}
