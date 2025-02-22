import 'package:flutter/material.dart';
import 'package:ui_flutter/app/page/home_page.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});
  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: NetworkImage(
                  "https://media2.giphy.com/media/7qWF0zp5sXDFyqup0y/giphy.gif?cid=6c09b95256ou254mm6hqz9oxpg5mczfeph6c16m5zuszed4n&ep=v1_internal_gif_by_id&rid=giphy.gif&ct=s",
                ),
                width: 200,
                height: 200,
              ),
              const Column(
                children: [
                  Text(
                    "Welcome To Application",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Are you looking for a welcome screen for your food app? Do you need a design suggestion",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  // event
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
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
                      "Get Started",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
