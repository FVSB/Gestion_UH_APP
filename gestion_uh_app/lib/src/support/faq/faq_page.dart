import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  final faqs = [
    '¿Qué funcionalidades ofrece esta app?',
    '¿Cómo puedo iniciar sesión en la app?',
    '¿Puedo ver mis calificaciones desde la app?',
    '¿Cómo recibo notificaciones importantes de la universidad?',
    '¿Puedo actualizar mis datos personales desde la app?',
    '¿Qué hago si la app no funciona correctamente?',
    '¿Qué funcionalidades ofrece esta app?',
    '¿Cómo puedo iniciar sesión en la app?',
    '¿Puedo ver mis calificaciones desde la app?',
    '¿Cómo recibo notificaciones importantes de la universidad?',
    '¿Puedo actualizar mis datos personales desde la app?',
    '¿Qué hago si la app no funciona correctamente?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SafeArea(
        child: Column(
          children: [
            _inputSearch(),
            SizedBox(height: 16),
            _title(),
            SizedBox(height: 16),
            _faqsList(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
    );
  }

  Widget _inputSearch() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Busca preguntas frecuentes',
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: const Color(0xFFF0F2F4),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Preguntas frecuentes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _faqsList() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color(0xFFDCE0E5)),
              ),
              margin: EdgeInsets.only(bottom: 10),
              child: ExpansionTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Color.fromARGB(10, 220, 224, 229),
                collapsedBackgroundColor: Colors.white,
                title: Text(
                  faqs[index],
                  style: TextStyle(
                    color: Color(0xFF111418),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 5, 5),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
