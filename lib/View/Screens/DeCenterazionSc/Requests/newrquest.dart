import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/Constants/requestconsttexts.dart';
import 'package:mininstryoffinance/View/Widgwts/BoxFormFoled.dart';
import 'package:mininstryoffinance/View/Widgwts/BoxRidoFoled.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';
import 'package:mininstryoffinance/Constants/commitconsttexts.dart';

class NewReuest extends StatefulWidget {
  @override
  State<NewReuest> createState() => _NewReuestState();
}

class _NewReuestState extends State<NewReuest> {
  var chapter = "one";
  var part = "one";
  var type = "one";
  var item = "one";
  var amount = "one";
  var date = "one";
  var choose = "tow";
  String? choose2;
  String? country;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "${TitlesConstText.NewRequest} ",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: SubDrawerWidget(),
        body: ListView(
          children: [
            Container(
                width: double.infinity,
                height: 850,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxRidoFoldRequest(
                      Lefttitle: "${RquestConstText.Chpter}:",
                      righttitle: "${RquestConstText.Part}:",
                    ),
                    BoxRidoFoldRequest(
                      Lefttitle: "${RquestConstText.Type}:",
                      righttitle: "${RquestConstText.Item}:",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 160,
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "Continues:",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "yes",
                              groupValue: choose2,
                              onChanged: (value) {
                                setState(() {
                                  choose2 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "Yes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: "no",
                              groupValue: choose2,
                              onChanged: (value) {
                                setState(() {
                                  choose2 = value.toString();
                                });
                              },
                            ),
                            Text(
                              "No",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                    BoxRidoFoldRequest(
                      Lefttitle: "${RquestConstText.Aomuant}:",
                      righttitle: "${RquestConstText.Date}:",
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Text(
                    //           "Amount:",
                    //           style: TextStyle(
                    //               fontSize: 25,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Container(
                    //           margin: EdgeInsets.symmetric(vertical: 10),
                    //           padding: EdgeInsets.symmetric(
                    //               horizontal: 30, vertical: 0),
                    //           decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(10),
                    //           ),
                    //           child: DropdownButton(
                    //             underline: Divider(
                    //               color: Colors.transparent,
                    //             ),
                    //             hint: Text(
                    //               "Amount",
                    //               style: TextStyle(fontSize: 25),
                    //             ),
                    //             items: ["one", "tow", "three"]
                    //                 .map((e) => DropdownMenuItem(
                    //                       child: Text("$e"),
                    //                       value: e,
                    //                     ))
                    //                 .toList(),
                    //             onChanged: (value) {
                    //               setState(() {
                    //                 amount = value.toString();
                    //               });
                    //             },
                    //             value: amount,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Text(
                    //           "Date:",
                    //           style: TextStyle(
                    //               fontSize: 25,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold),
                    //         ),
                    //         Container(
                    //           margin: EdgeInsets.symmetric(vertical: 10),
                    //           padding: EdgeInsets.symmetric(
                    //               horizontal: 30, vertical: 0),
                    //           decoration: BoxDecoration(
                    //             color: Colors.white,
                    //             borderRadius: BorderRadius.circular(10),
                    //           ),
                    //           child: DropdownButton(
                    //             underline: Divider(
                    //               color: Colors.transparent,
                    //             ),
                    //             hint: Text(
                    //               "Date",
                    //               style: TextStyle(fontSize: 25),
                    //             ),
                    //             items: ["one", "tow", "three"]
                    //                 .map((e) => DropdownMenuItem(
                    //                       child: Text("$e"),
                    //                       value: e,
                    //                     ))
                    //                 .toList(),
                    //             onChanged: (value) {
                    //               setState(() {
                    //                 date = value.toString();
                    //               });
                    //             },
                    //             value: date,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    BoxFormFiledRequest(
                      title: "${RquestConstText.Descrption}",
                      hintText: " Enter Descrption .. ",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (() {
                            Navigator.of(context)
                                .pushReplacementNamed("homepage");
                          }),
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              "${TitlesConstText.Add}",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
