import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/support_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión UH App',
      theme: ThemeData(primarySwatch: Colors.blue),
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
