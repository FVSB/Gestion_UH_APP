import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/form/form_support_controller.dart';

class FormSupportPage extends StatefulWidget {
  const FormSupportPage({super.key});

  @override
  State<FormSupportPage> createState() => _FormSupportPageState();
}

class _FormSupportPageState extends State<FormSupportPage> {
  final FormSupportController _controller = FormSupportController();

  @override
  void initState() {
    super.initState();
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  static const textColor = Color(0xFF111418);

  Widget buildInput({
    required TextEditingController controller,
    required String labelText,
  }) {
    return TextField(
      cursorColor: Color(0xFF1980E6),
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,

        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
        ),
        labelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _controller.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 480),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _title(),
              _feedbackText(),
              SizedBox(height: 16),
              _inputName(),
              SizedBox(height: 16),
              _inputEmail(),
              SizedBox(height: 16),
              _inputCategory(),
              SizedBox(height: 16),
              _inputMessage(),
              SizedBox(height: 24),
              _buttonSubmit(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: _controller.navigateToSupportMain,
        icon: Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
    );
  }

  Widget _title() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Reportar un problema',
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: -0.5,
        ),
      ),
    );
  }

  Widget _feedbackText() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Text(
        'Gracias por tomarse el tiempo para informar este problema. Utilizaremos esta información para mejorar nuestro servicio.',
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _inputName() {
    return buildInput(controller: nameController, labelText: 'Nombre');
  }

  Widget _inputEmail() {
    return buildInput(controller: emailController, labelText: 'Email');
  }

  Widget _inputCategory() {
    return buildInput(controller: categoryController, labelText: 'Categoría');
  }

  Widget _inputMessage() {
    return TextField(
      controller: descriptionController,
      maxLines: 6,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        labelText: 'Descripción',
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        labelStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buttonSubmit() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _controller.submitReport,
        child: Text(
          'Enviar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xFF1980E6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}
