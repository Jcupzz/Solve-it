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
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                          ),
                        ),
                      ),
                      Text(
                        'Tressa Bhai',
                        style: Styles().h2_bold,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                        child: Text('Id No : 2019CSH094',
                            style: Styles().h14_bold),
                      ),
                      Text(
                        'Account :  Admin',
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
                  child: Text('Email :    rockybhaido@gmail.com',
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
                child: Text('Phone :  +91 948826185', style: Styles().h14),
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
