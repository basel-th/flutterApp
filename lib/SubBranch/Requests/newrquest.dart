import 'dart:math';

import 'package:flutter/material.dart';

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
                " طلب جديد",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.home,
          //       size: 30,
          //       color: Colors.blue,
          //     ),
          //   )
          // ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(225, 255, 255, 255),
          child: Column(children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 160, 226),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                accountName: Text("BASEL AHMED"),
                accountEmail: Text("baselahmed856@gmail.com")),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.home),
              iconColor: Colors.blue,
              title: Text(
                "الصفحة الرئيسة",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("homepage");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.add),
              iconColor: Colors.blue,
              title: Text(
                "  التزام جديد",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("newcommitment");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.bookmark_outline),
              iconColor: Colors.blue,
              title: Text(
                "التزامات",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("elemntcommitment");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.settings),
              iconColor: Colors.blue,
              title: Text(
                " الاعدادت",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("settings");
              },
            ),
            ListTile(
              trailing: Icon(Icons.exit_to_app),
              iconColor: Colors.blue,
              title: Text(
                " تسجيل خروج",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("load");
              },
            ),
          ]),
        ),
        body: ListView(
          children: [
            Container(
                width: double.infinity,
                height: 850,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Chapter:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "Chpter",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    chapter = value.toString();
                                  });
                                },
                                value: chapter,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Part:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "Part",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    part = value.toString();
                                  });
                                },
                                value: part,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Type:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "type",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    type = value.toString();
                                  });
                                },
                                value: type,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Item:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "Item",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    item = value.toString();
                                  });
                                },
                                value: item,
                              ),
                            ),
                          ],
                        ),
                      ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Amount:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "Amount",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    amount = value.toString();
                                  });
                                },
                                value: amount,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Date:",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "Date",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: ["one", "tow", "three"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text("$e"),
                                          value: e,
                                        ))
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    date = value.toString();
                                  });
                                },
                                value: date,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120,
                          width: 340,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Description:",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: " Enter Description ... ",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                            width: 10, color: Colors.red))),
                              ),
                            ],
                          )),
                        ),
                      ],
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
                              "اضافة",
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
