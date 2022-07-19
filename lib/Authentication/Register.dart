import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:solve_it/Authentication/Authentication_Services.dart';
import 'package:solve_it/static/Bottom_Nav_Bar.dart';
import 'package:solve_it/static/Styles.dart';

import '../main.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController? U_Name;
  TextEditingController? U_Email;
  TextEditingController? U_Phone;
  TextEditingController? U_Location;
  TextEditingController? U_CPW;
  TextEditingController? U_Password;
  bool? passwordVisibility3;
  bool? passwordVisibility4;
  TextEditingController? A_Name;
  TextEditingController? A_Email;
  TextEditingController? A_Phone;
  TextEditingController? A_Location;
  TextEditingController? A_Designation;
  TextEditingController? A_CPW;
  TextEditingController? A_Password;
  bool? passwordVisibility1;
  bool? passwordVisibility2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    A_Name = TextEditingController();
    A_Email = TextEditingController();
    A_Phone = TextEditingController();
    A_Location = TextEditingController();
    A_Designation = TextEditingController();
    A_CPW = TextEditingController();
    A_Password = TextEditingController();

    passwordVisibility1 = false;
    passwordVisibility2 = false;
    U_Name = TextEditingController();
    U_Email = TextEditingController();
    U_Phone = TextEditingController();
    U_Location = TextEditingController();
    U_CPW = TextEditingController();
    U_Password = TextEditingController();
    passwordVisibility3 = false;
    passwordVisibility4 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        title: Text(
          "Solve iT.",
          style: GoogleFonts.rancho(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
            // TODO: implement onPressed
            // await Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => LoginWidget(),
            //   ),
            // );
          },
        ),
      ),
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.85, -0.25),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                      child: Text('Sign up',
                          textAlign: TextAlign.start, style: Styles().h3_bold),
                    ),
                  ),
                  Expanded(
                    child: DefaultTabController(
                      length: 2,
                      initialIndex: 0,
                      child: Column(
                        children: [
                          TabBar(
                            labelColor: Color(0xFF05090F),
                            labelStyle: Styles().h14,
                            indicatorColor: Color(0xFF05090F),
                            indicatorWeight: 3,
                            tabs: [
                              Tab(
                                text: 'Authority',
                              ),
                              Tab(
                                text: 'User',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 15, 20, 0),
                                        child: TextFormField(
                                          controller: A_Name,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Name',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.person_rounded,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 5, 20, 0),
                                        child: TextFormField(
                                          controller: A_Email,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Email',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.mail_outlined,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 5, 20, 0),
                                        child: TextFormField(
                                          controller: A_Phone,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Phone',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Phone',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.phone_android_outlined,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType: TextInputType.phone,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 5, 20, 0),
                                        child: TextFormField(
                                          controller: A_Location,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Location',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Location',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.location_on,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.streetAddress,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: A_Designation,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Designation',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Designation',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.design_services_outlined,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: A_CPW,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_CPW',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Constituency | Panchayat | Ward',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.water_damage,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: A_Password,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'A_Password',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: passwordVisibility1!,
                                          decoration: InputDecoration(
                                            hintText: 'Create Passsword',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.account_circle_rounded,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility1 =
                                                    passwordVisibility1,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility1!
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 1, 20, 25),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Bottom_Nav_Bar(),
                                              ),
                                            );
                                          },
                                          child: Text("Sign Up"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 15, 20, 0),
                                        child: TextFormField(
                                          controller: U_Name,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_Name',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.person_rounded,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 0),
                                        child: TextFormField(
                                          validator: (val) => val!.isEmpty ||
                                                  !(val.contains('@'))
                                              ? 'Enter a valid email address'
                                              : null,
                                          controller: U_Email,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_Email',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.mail_outlined,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: U_Phone,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_Phone',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Phone',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.phone_android_outlined,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType: TextInputType.phone,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: U_Location,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_Location',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Location',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.location_on,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.streetAddress,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: U_CPW,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_CPW',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Constituency | Panchayat | Ward',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.water_damage,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                          ),
                                          style: Styles().h14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEEEE),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: TextFormField(
                                          validator: (val) => val!.isEmpty ||
                                                  val.length < 6
                                              ? 'Enter a password greater than 6 characters'
                                              : null,
                                          controller: U_Password,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'U_Password',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          // obscureText: passwordVisibility3!,
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            hintText: 'Create Passsword',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF05090F),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.account_circle_rounded,
                                              color: Color(0xFF05090F),
                                              size: 32,
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility3 =
                                                    passwordVisibility3,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                passwordVisibility3!
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFF757575),
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: Styles().h14,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 25),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // setState(() {
                                              //   loading = true;
                                              // });

                                              if (U_Name!
                                                      .value.text.isNotEmpty &&
                                                  U_Email!
                                                      .value.text.isNotEmpty &&
                                                  U_Phone!
                                                      .value.text.isNotEmpty &&
                                                  U_Location!
                                                      .value.text.isNotEmpty &&
                                                  U_CPW!
                                                      .value.text.isNotEmpty &&
                                                  U_Password!
                                                      .value.text.isNotEmpty) {
                                                final FirebaseAuth
                                                    firebaseAuth =
                                                    FirebaseAuth.instance;
                                                AuthenticationService
                                                    authenticationService =
                                                    AuthenticationService(
                                                        firebaseAuth);
                                                authenticationService
                                                    .registerUser(
                                                        U_Name!.value.text
                                                            .toString(),
                                                        U_Email!.value.text
                                                            .toString(),
                                                        U_Phone!.value.text
                                                            .toString(),
                                                        U_Location!.value.text
                                                            .toString(),
                                                        U_CPW!
                                                            .value.text
                                                            .toString(),
                                                        U_Password!.value.text
                                                            .trim()
                                                            .toString());

                                                await Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Bottom_Nav_Bar(),
                                                  ),
                                                );
                                              } else {
                                                BotToast.showText(
                                                    text:
                                                        "Please complete all the details");
                                              }
                                            }
                                          },
                                          // USER
                                          child: Text("Sign Up"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
