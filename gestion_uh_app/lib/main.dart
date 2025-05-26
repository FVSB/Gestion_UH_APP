import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/form/form_support_page.dart';
import 'package:gestion_uh_app/src/support/support_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión UH App',
      theme: ThemeData(
        primaryColor: Color(
          0xFF1980E6,
        ), // Cambia esto al color principal que prefieras
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1980E6), // Aquí decides el color base de la app
        ),
        splashColor:
            Colors.transparent, // elimina el splash púrpura al hacer tap
        highlightColor:
            Colors.transparent, // elimina efectos púrpura al enfocar
        focusColor:
            Colors.transparent, // evita que ciertos widgets tomen color raro
        dividerColor: Colors.transparent, // útil si usas ExpansionTile
        useMaterial3: true, // Opcional según si usas Material 3
      ),
      home: HomePage(),
      routes: {'/support': (context) => SupportPage()},
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a Soporte'),
          onPressed: () {
            Navigator.pushNamed(context, '/support');
          },
        ),
      ),
    );
  }
}
