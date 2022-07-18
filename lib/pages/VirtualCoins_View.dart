import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class VirtualCoins_View extends StatefulWidget {
  const VirtualCoins_View({Key? key}) : super(key: key);

  @override
  State<VirtualCoins_View> createState() => _VirtualCoins_ViewState();
}

class _VirtualCoins_ViewState extends State<VirtualCoins_View> {
  List<String> listItems = [
    "Contribute to the app",
    "Verify as problem solved after the problem is solved by authorities",
    "Write reviews and get more than 10 upvotes"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 2, //New
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Lottie.asset("assets/lottie/gold_coin.json"),
                  Text("You have", style: h2),
                  Text("10", style: h3_bold),
                  Text("Virtual Coins", style: h2),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5.0,
                  spreadRadius: 2, //New
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How to earn virtual coins?", style: h2_bold),
                  SizedBox(
                    height: 5,
                  ),
                  BulletedList(
                    listItems: listItems,
                    style: h14,
                    bulletColor: Colors.black,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

TextStyle h3_bold = TextStyle(
  fontSize: 30,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.bold,
);
TextStyle h2_bold = TextStyle(
  fontSize: 20,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.bold,
);
TextStyle h14_bold = TextStyle(
  fontSize: 10,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.bold,
);
TextStyle h3 = TextStyle(
  fontSize: 30,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.normal,
);
TextStyle h2 = TextStyle(
  fontSize: 20,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.normal,
);
TextStyle h14 = TextStyle(
  fontSize: 14,
  color: Colors.black,
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.normal,
);
