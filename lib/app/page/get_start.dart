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
              const Text(
                "Welcome to Your App",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text(""),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Colors.black38,
                      )
                    ],
                    color: const Color(0x9E6C6CFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Start",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
