// import 'dart:io';

// import 'package:bot_toast/bot_toast.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:solve_it/Database_Services/Database_Services.dart';
// import 'package:solve_it/pages/Select_Location.dart';
// import 'package:solve_it/static/Bottom_Nav_Bar.dart';
// import 'package:solve_it/static/Styles.dart';

// class Add_Complaint extends StatefulWidget {
//   @override
//   _Add_ComplaintState createState() => _Add_ComplaintState();
// }

// class _Add_ComplaintState extends State<Add_Complaint> {
//   final _formKey = GlobalKey<FormState>();
//   late String? iName, iPhone1, iAddress, iType, iDesc = "";
//   final iNameController = TextEditingController();
//   final iPhone1Controller = TextEditingController();
//   final iAddressController = TextEditingController();
//   final iDescController = TextEditingController();
//   late int selectedValue = 0;
//   int iHour = 1;
//   File? iPhoto;
//   late double lat;
//   late double long;
//   bool isLocationSelected = false;
//   final picker = ImagePicker();
//   var problem_items = [
//     "Build Dry Waste Collection Centre",
//     "Build Garbage/Waste Composting Units",
//     "Certificates - Other changes",
//     "Cleaning Of Public Toilet",
//     "Clearance Of Garbage Dump Or Black Spot change",
//     "Clearing Of Roadside Dustbin change",
//     "Collection Of Door-to-door Garbage",
//     "Construction Of Community Halls",
//     "Dangling Or Hanging Of OFCs/Cables/Wires",
//     "Defacement of Trees",
//     "Desilting Existing Roadside Drains",
//     "Desilting/Remove Blockage In Lakes",
//     "Desilting/Remove Blockage of Storm Water Drains",
//     "Fencing Of BBMP/Government Land",
//     "Fixing/Reparing Potholes",
//     "Flooding/Waterlogging Of Roads And Footpaths",
//     "Fogging (Mosquito Menace) Or Pest Control",
//     "Garbage Dumping In Vacant Lot/Land",
//     "Government Land/Property Encroachment",
//     "Implementation Of Waste Segregation/Garbage",
//     "Installation Of Drinking Water ATMs",
//     "Installation Of Lights In Parks",
//     "Installation Of Lights In Playground",
//     "Installation Of New Streetlights",
//     "Installation Of Surveillance Cameras",
//     "Installation/Maintenance Of Streetlight Timer",
//     "Maintenance And Repair Of Storm Water Drains",
//     "Maintenance of Primary/Community health centre",
//     "Maintenance Of City Meat Production And Processing Centre",
//     "Maintenance Of Community Halls",
//     "Man Maintenance Of Crematoriums And Burial ground",
//     "Maintenance Of Dry Waste Collection Centre",
//     "Maintenance Of Educational Institutions And Libraries",
//     "Maintenance Of Existing Composting Units",
//     "Maintenance Of Existing Council Buildings",
//     "Change Maintenance Of Existing Dhobi Ghats",
//     "Maintenance Of Existing Markets",
//   ];
//   Database_Services database_services = Database_Services();
//   var dropdownvalue;
//   // Database_Services database_services = new Database_Services();

//   Future getImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedFile != null) {
//         iPhoto = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   late double lati, longi;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Report a Problem',
//           style: GoogleFonts.rancho(
//             fontSize: 30,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         toolbarHeight: 80,
//         centerTitle: false,
//         backgroundColor: Colors.black,
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   // Text("Report a Problem", style: Styles().h3_bold),
//                   // Divider(
//                   //   color: Theme.of(context).dividerColor,
//                   //   height: 30,
//                   // ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Title",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   TextFormField(
//                     onChanged: (value) {
//                       iName = value;
//                     },
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter some text';
//                       }
//                       return null;
//                     },
//                     controller: iNameController,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       hintText: "Title of problem",
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Description",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   TextFormField(
//                     onChanged: (value) {
//                       iAddress = value;
//                     },
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter some text';
//                       }
//                       return null;
//                     },
//                     minLines: 6,
//                     maxLines: 6,
//                     controller: iAddressController,
//                     decoration: InputDecoration(
//                       alignLabelWithHint: true,
//                       hintText: "Short description of problem",
//                       fillColor: Colors.white,
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Problem Type",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(14),
//                       border: Border.all(
//                           width: 1,
//                           color: Theme.of(context).unselectedWidgetColor),
//                     ),
//                     width: MediaQuery.of(context).size.width,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                       child: DropdownButton(
//                         hint: Text("Select problem type"),
//                         underline: SizedBox(),
//                         isExpanded: true,
//                         value: dropdownvalue,

//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),

//                         // Array list of items
//                         items: problem_items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (newValue) {
//                           setState(() {
//                             dropdownvalue = newValue!;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.black,
//                     height: 30,
//                   ),
//                   // Padding(
//                   //   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
//                   //   child: Text(
//                   //     "Select Hours",
//                   //     style: Theme.of(context).textTheme.bodyText2,
//                   //   ),
//                   // ),
//                   // Container(
//                   //   decoration: BoxDecoration(border: Border.all(width: 1), borderRadius: BorderRadius.circular(14)),
//                   //   width: MediaQuery.of(context).size.width,
//                   //   child: NumberPicker.horizontal(
//                   //       listViewHeight: 50,
//                   //       step: 1,
//                   //       initialValue: iHour,
//                   //       minValue: 1,
//                   //       maxValue: 48,
//                   //       onChanged: (value) {
//                   //         setState(() {
//                   //           iHour = value;
//                   //           print(iHour);
//                   //         });
//                   //       }),
//                   // ),
//                   // Container(
//                   //     width: MediaQuery.of(context).size.width,
//                   //     margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                   //     padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                   //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.grey)),
//                   //     child: RichText(
//                   //       text: TextSpan(
//                   //         children: [
//                   //           WidgetSpan(
//                   //             child: Icon(Icons.info_outline_rounded, size: 18),
//                   //           ),
//                   //           TextSpan(
//                   //             text: "  Select the hours to show the request.",
//                   //             style: TextStyle(
//                   //               color: Colors.grey,
//                   //               fontSize: 12,
//                   //             ),
//                   //           ),
//                   //         ],
//                   //       ),
//                   //     )
//                   // ),
//                   // Divider(
//                   //   color: Theme.of(context).dividerColor,
//                   //   height: 30,
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
//                   //   child: Text(
//                   //     "Enter Description",
//                   //     style: Theme.of(context).textTheme.bodyText2,
//                   //   ),
//                   // ),
//                   // TextFormField(
//                   //   onChanged: (value) {
//                   //     iDesc = value;
//                   //   },
//                   //   validator: (value) {
//                   //     if (value!.isEmpty) {
//                   //       return 'Please enter some text';
//                   //     }
//                   //     return null;
//                   //   },
//                   //   minLines: 5,
//                   //   maxLines: 5,
//                   //   controller: iDescController,
//                   //   decoration: InputDecoration(
//                   //     alignLabelWithHint: true,
//                   //     hintText: "Description",
//                   //     fillColor: Colors.white,
//                   //     focusedBorder: OutlineInputBorder(
//                   //       borderRadius: BorderRadius.circular(14),
//                   //       borderSide: BorderSide(
//                   //           width: 1,
//                   //           color: Theme.of(context).unselectedWidgetColor),
//                   //     ),
//                   //     enabledBorder: OutlineInputBorder(
//                   //       borderRadius: BorderRadius.circular(14),
//                   //       borderSide: BorderSide(
//                   //           width: 1,
//                   //           color: Theme.of(context).unselectedWidgetColor),
//                   //     ),
//                   //     border: OutlineInputBorder(
//                   //       borderRadius: BorderRadius.circular(14),
//                   //       borderSide: BorderSide(),
//                   //     ),
//                   //   ),
//                   // ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Upload images of the problem",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () => getImage(),
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                       decoration: BoxDecoration(
//                         border: Border.all(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                         borderRadius: BorderRadius.circular(14),
//                       ),
//                       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.width,
//                       child: Center(
//                           child: iPhoto == null
//                               ? Icon(
//                                   Icons.add_photo_alternate_outlined,
//                                   size: 80,
//                                 )
//                               : Image.file(iPhoto!)),
//                     ),
//                   ),
//                   Divider(
//                     height: 10,
//                     color: Theme.of(context).dividerColor,
//                     thickness: 0,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Select Institute Location",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   isLocationSelected
//                       ? Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 50,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (_) => Select_Location()));
//                               },
//                               child: Text("Location Selected"),
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.green[300],
//                                   elevation: 0,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(14)))),
//                         )
//                       : Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 50,
//                           margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
//                           child: ElevatedButton(
//                               onPressed: () async {
//                                 var result = await Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (_) => Select_Location()),
//                                 );
//                                 if (result != null) {
//                                   print('result is:');
//                                   print(result);
//                                   LatLng df;
//                                   df = result;
//                                   lat = df.latitude;
//                                   long = df.longitude;
//                                   setState(() {
//                                     isLocationSelected = true;
//                                   });
//                                 }
//                               },
//                               child: Text("Select Location"),
//                               style: ElevatedButton.styleFrom(
//                                   primary: Colors.black,
//                                   elevation: 0,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(12)))),
//                         ),
//                   Divider(
//                     height: 10,
//                     color: Theme.of(context).dividerColor,
//                     thickness: 0,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
//                     child: Text(
//                       "Primary Contact Number",
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   TextFormField(
//                     onChanged: (value) {
//                       iPhone1 = value;
//                     },
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'Please enter some text';
//                       }
//                       return null;
//                     },
//                     keyboardType: TextInputType.number,
//                     controller: iPhone1Controller,
//                     decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(
//                             width: 1,
//                             color: Theme.of(context).unselectedWidgetColor),
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(14),
//                         borderSide: BorderSide(),
//                       ),
//                     ),
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(0, 14, 0, 30),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: 60,
//                       child: ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               if (dropdownvalue == null) {
//                                 BotToast.showText(
//                                     text:
//                                         "Please select problem type from the dropdown");
//                                 iType = dropdownvalue;
//                               } else {
//                                 iType = dropdownvalue;
//                               }
//                               if (lat == null && long == null) {
//                                 BotToast.showText(
//                                     text: "Please select institute location");
//                               } else {
//                                 ScaffoldMessenger.of(context)
//                                     .showSnackBar(SnackBar(
//                                         content: Text(
//                                   'Processing Data',
//                                   style: Theme.of(context).textTheme.headline4,
//                                 )));
//                                 database_services.addCreateToFb(
//                                     iName!,
//                                     iAddress!,
//                                     iType!,
//                                     iPhoto!,
//                                     iPhone1!,
//                                     iDesc!,
//                                     false,
//                                     lat,
//                                     long);
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (_) => Bottom_Nav_Bar()));
//                               }
//                             }
//                           },
//                           child: Text(
//                             "Submit",
//                             style: Styles().h14_bold,
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               elevation: 0,
//                               primary: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(14),
//                               ))),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
