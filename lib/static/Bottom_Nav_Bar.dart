import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solve_it/pages/Add_Complaint.dart';
import 'package:solve_it/pages/Home.dart';
import 'package:solve_it/pages/Profile.dart';
import 'package:solve_it/pages/asd.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  @override
  _Bottom_Nav_BarState createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int _page = 0;
  final pageOption = [
    Home(),
    Add_Complaint(),
    Home(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        height: 60,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.add_circle_rounded,
            size: 20,
            color: Colors.black,
          ),
          Icon(
            Icons.location_on_outlined,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.person,
            size: 20,
            color: Colors.black,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: pageOption[_page],
    );
  }
}
