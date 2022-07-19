import 'package:solve_it/pages/VirtualCoins_View.dart';
import 'package:solve_it/static/Styles.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        title: Text(
          'Solve iT.',
          style: GoogleFonts.rancho(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          padding: EdgeInsets.all(12),
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: Container(
                width: 100,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 2, //New
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  spreadRadius: 1 //New
                                  )
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            "assets/images/person.png",
                          ),
                        ),
                      ),
                      Text(
                        'Tessa',
                        style: Styles().h2_bold,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                        child: Text('Id No : 2019CSH094',
                            style: Styles().h14_bold),
                      ),
                      Text(
                        'Account :  User',
                        style: Styles().h14_bold,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1 //New
                      )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Text('Email :    tessapp.26@gmail.com',
                      style: Styles().h14_bold),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1 //New
                      )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text('Phone :  +91 8921988579', style: Styles().h14),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1 //New
                      )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text('Location :  Chalakudy', style: Styles().h14),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1 //New
                      )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text('Ward :  26', style: Styles().h14),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      spreadRadius: 1 //New
                      )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text('Designation : Member', style: Styles().h14),
              ),
            ),
            VirtualCoins_View()
          ],
        ),
      ),
    );
  }
}
