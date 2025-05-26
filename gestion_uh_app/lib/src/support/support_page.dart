import 'package:flutter/material.dart';
import 'package:gestion_uh_app/src/support/support_controller.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final SupportController _controller = SupportController();

  @override
  void initState() {
    super.initState();
  }

  static const textColor = Color(0xFF111418);
  static const iconBgColor = Color(0xFFF0F2F4);

  Widget buildOption({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: iconBgColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: textColor),
                ),
                SizedBox(width: 12),
                Text(text, style: TextStyle(color: textColor, fontSize: 16)),
              ],
            ),
            Icon(Icons.chevron_right, color: textColor),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _controller.init(context); // Aquí ya tienes context
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          _shortcutsText(),
          _supportForm(),
          _faqSection(),
          _ticketHistory(),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(
          "Soporte",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            letterSpacing: -0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  Widget _shortcutsText() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Accesos directos',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _supportForm() {
    return buildOption(
      icon: Icons.chat_bubble_outline,
      text: 'Formulario de soporte',
      onTap: _controller.navigateToSupportForm,
    );
  }

  Widget _faqSection() {
    return buildOption(
      icon: Icons.help_outline,
      text: 'Sección de FAQs',
      onTap: _controller.navigateToFaqPage,
    );
  }

  Widget _ticketHistory() {
    return buildOption(
      icon: Icons.history,
      text: 'Historial de tickets',
      onTap: () {},
    );
  }
}
