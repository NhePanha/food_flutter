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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              // header
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
            // header
            Row(
              // searching
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
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
            //search
            Row(
              // sliders
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
              // categorys
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
            const SizedBox(
              height: 10,
            ),
            Container(
              // catecory item
              width: 430,
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 8.0), // Adds spacing between items
                    child: Container(
                      width: 100, // Set a fixed width for each item
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        // borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: NetworkImage(category[index].image)),
                          const SizedBox(height: 8),
                          Text(
                            'Item ${index + 1}',
                            style: const TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // category item
            const SizedBox(
              height: 10,
            ),
            const Row(
              // Popular item
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Populars",
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
            const SizedBox(
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Apply border radius
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              popular[index].image,
                              fit: BoxFit.cover,
                              width:
                                  400, // Ensure it covers the container properly
                              height: 200,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 400,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(110, 16, 16, 16),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      popular[index].name,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white, // Adjust as needed
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "${popular[index].price} \$",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors
                                            .yellowAccent, // Highlight price
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Row(
                                      children: List.generate(
                                        4,
                                        (starIndex) => Icon(
                                          Icons.star,
                                          color: Colors
                                              .orange, // Change to filled star color
                                          size: 20, // Adjust size
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "R ${popular[index].rating}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .greenAccent, // Highlight rating
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
