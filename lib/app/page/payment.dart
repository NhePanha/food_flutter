import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flutter/app/constrollers/payment_option.dart';
import 'package:ui_flutter/app/constrollers/summary_row.dart';
import 'package:ui_flutter/app/model/list_popular.dart';

class PaymentScreen extends StatefulWidget {
  final double totalPrice;

  const PaymentScreen({
    super.key,
    required Popular popular,
    required int quantity,
    required double total_price,
    required this.totalPrice,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = "Credit Card"; // Default payment method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Payment Method",
              style: GoogleFonts.playfair(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Payment Options
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: PaymentOption(
                  title: "Credit Card",
                  icon: Icons.credit_card,
                  isSelected: selectedPaymentMethod == "Credit Card",
                  onSelect: () =>
                      setState(() => selectedPaymentMethod = "Credit Card"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: PaymentOption(
                  title: "PayPal",
                  icon: Icons.account_balance_wallet,
                  isSelected: selectedPaymentMethod == "PayPal",
                  onSelect: () =>
                      setState(() => selectedPaymentMethod = "PayPal"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: PaymentOption(
                  title: "Google Pay",
                  icon: Icons.payment,
                  isSelected: selectedPaymentMethod == "Google Pay",
                  onSelect: () =>
                      setState(() => selectedPaymentMethod = "Google Pay"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: PaymentOption(
                  title: "Apple Pay",
                  icon: Icons.phone_iphone,
                  isSelected: selectedPaymentMethod == "Apple Pay",
                  onSelect: () =>
                      setState(() => selectedPaymentMethod = "Apple Pay"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            // Order Summary
            Text(
              "Order Summary",
              style: GoogleFonts.playfair(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SummaryRow(
              title: "Subtotal",
              amount: widget.totalPrice - 2.00,
            ),
            SummaryRow(
              title: "Est. Tax",
              amount: 2.00,
            ),
            SummaryRow(
              title: "Delivery",
              amount: 0,
              free: true,
            ),
            Divider(),
            SummaryRow(
              title: "Total",
              amount: widget.totalPrice,
              isBold: true,
            ),
            Spacer(),
            // Checkout Button
            SizedBox(
              width: double.infinity,
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      )
                    ],
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Payment Successful with $selectedPaymentMethod",
                            style: GoogleFonts.playfair(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Pay \$${widget.totalPrice.toStringAsFixed(2)}",
                      style: GoogleFonts.playfair(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
