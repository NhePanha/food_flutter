import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flutter/app/model/list_popular.dart';
import 'package:ui_flutter/app/page/payment.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(this.popular, {super.key});
  final Popular popular;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  bool isFavorite = false; // Initial state
  int quantity = 0;
  double total_price = 0.0;
  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  void TotalPrice() {
    setState(() {
      total_price = widget.popular.price * quantity;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.popular.name,
          style: GoogleFonts.acme(fontSize: 30, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.pink : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite; // Toggle the value
                });
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.popular.description,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  color: const Color(0x73000000)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  '${widget.popular.rate}',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 400,
              color: Colors.transparent, // No background
              child: Image.network(widget.popular.image),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Text("calories"), Text("120")],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [Text("Volume"), Text("12 Inch")],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [Text("Distance"), Text("1 KM")],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Order",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        // Decrease Button
                        GestureDetector(
                          onTap: () {
                            decrement();
                            TotalPrice();
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child:
                                const Icon(Icons.remove, color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 15),
                        // Quantity Text
                        Text(
                          "$quantity",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 15),
                        // Increase Button
                        GestureDetector(
                          onTap: () {
                            increment();
                            TotalPrice();
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: const Color.fromARGB(255, 248, 248, 248),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(Icons.add, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Text(
                      "Delivery",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Express",
                      style: TextStyle(color: Color(0xFF01A857), fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Price",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$${total_price.toStringAsFixed(2)}",
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(
                      popular: widget.popular,
                      quantity: quantity,
                      total_price: total_price, totalPrice: total_price,
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 400,
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
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Add To Card",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
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
