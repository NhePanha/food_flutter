import 'package:flutter/material.dart';
import 'package:ui_flutter/app/model/list_popular.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(this.popular, {super.key});
  final Popular popular;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
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

  void InTotalPrice() {
    setState(() {
      total_price = widget.popular.price * quantity;
    });
  }

  void DeTotalPrice() {
    setState(() {
      total_price = widget.popular.price * quantity;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.popular.name),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.popular.description,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star),
                Text(
                  '${widget.popular.rate}',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 400,
              child: Image(
                image: NetworkImage(widget.popular.image),
              ),
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
                  children: [Text("calories"), Text("120")],
                ),
                Text(
                  "|",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [Text("calories"), Text("120")],
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
                            DeTotalPrice();
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
                            InTotalPrice();
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
                    Text("Express"),
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
                    Text("$total_price"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                // event
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
