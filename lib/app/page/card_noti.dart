import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_flutter/app/model/list_popular.dart';

class CardNotivacation extends StatefulWidget {
  const CardNotivacation({
    super.key,
    required this.popular,
    required int this.quantity,
    required double this.total_price,
  });
  final Popular popular;
  final int quantity;
  final double total_price;

  @override
  State<CardNotivacation> createState() => _CardNotivacationState();
}

class _CardNotivacationState extends State<CardNotivacation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 130,
                        height: 130,
                        child: Image(
                          image: NetworkImage(widget.popular.image),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.popular.name,
                          style: GoogleFonts.aBeeZee(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.popular.description),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${widget.total_price} \$",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${widget.popular.rate}",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 0, 89, 255)),
                          )
                        ])
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 45,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
