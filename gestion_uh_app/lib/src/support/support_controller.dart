import 'package:flutter/material.dart';

class SupportController {
  late BuildContext context;

  Future<void> init(BuildContext context) async {
    this.context = context;
  }

  void navigateToSupportForm() {
    Navigator.pushNamed(context, '/support/form');
  }
}
