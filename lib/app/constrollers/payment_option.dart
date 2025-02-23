// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ui_flutter/app/model/list_popular.dart';

import 'package:flutter/material.dart';

class PaymentOption extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onSelect;

  const PaymentOption({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.icon,
          size: 32,
          color: widget.isSelected
              ? const Color.fromARGB(255, 0, 140, 255)
              : const Color.fromARGB(255, 123, 123, 123)),
      title: Text(widget.title, style: TextStyle(fontSize: 20)),
      trailing: widget.isSelected
          ? Icon(Icons.check_circle, color: Colors.blue)
          : null,
      onTap: widget.onSelect,
    );
  }
}
