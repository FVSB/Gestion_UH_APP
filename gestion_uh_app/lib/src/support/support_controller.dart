import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/form/form_page.dart';

class SupportController {
  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void navigateToSupportForm() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormPage()),
    );
  }
}
