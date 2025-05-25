import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      backgroundColor: Colors.white,
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
          fontSize: 22,
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
        onPressed: () {
          // Aquí puedes manejar el envío
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Issue submitted!')));
        },
        child: Text(
          'Enviar',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: Color(0xFFF0F2F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    );
  }
}
