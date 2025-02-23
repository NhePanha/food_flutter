import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SummaryRow extends StatefulWidget {
  final String title;
  final double amount;
  final bool isBold;
  final bool free;

  const SummaryRow({
    required this.title,
    required this.amount,
    this.isBold = false,
    this.free = false,
  });

  @override
  State<SummaryRow> createState() => _SummaryRowState();
}

class _SummaryRowState extends State<SummaryRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style:
                GoogleFonts.playfair(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.free ? "Free" : "\$${widget.amount.toStringAsFixed(2)}",
            style:
                GoogleFonts.playfair(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
