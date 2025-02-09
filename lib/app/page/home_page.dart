import 'package:flutter/material.dart';
import 'package:ui_flutter/app/model/list_category.dart';
import 'package:ui_flutter/app/model/list_popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deliver To"),
                    Text(
                      "New York, USA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your address",
                      prefixIcon: Icon(
                        (Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                  width: 70,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const Icon(
                    Icons.sort,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 410,
                  height: 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://marketplace.canva.com/EAFyadayF_k/1/0/1600w/canva-red-and-yellow-modern-vibrant-food-promotion-banner-_oB9xQzKQAA.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  "See All",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 430,
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0), // Adds spacing between items
                  child: Container(
                    width: 100, // Set a fixed width for each item
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          'Item ${index + 1}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  "See All",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 430,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popular.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0), // Adds spacing between items
                  child: Container(
                    width: 400, // Set a fixed width for each item
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          'Item ${index + 1}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
