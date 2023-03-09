import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Widgwts/commitwidget.dart';

class ElmentsCommitment extends StatefulWidget {
  const ElmentsCommitment({super.key});

  @override
  State<ElmentsCommitment> createState() => _ElmentsCommitmentState();
}

class _ElmentsCommitmentState extends State<ElmentsCommitment> {
  @override
  int? i;
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: Container(
            margin: EdgeInsets.only(top: 90),
            decoration: BoxDecoration(
              color: Color.fromARGB(210, 34, 34, 34),
              borderRadius: BorderRadius.circular(0),
            ),
            height: 90,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromARGB(255, 64, 112, 151), width: 2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                    child: Text(
                      "جميع التزامات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 64, 112, 151), width: 2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    onTap: (() {
                      Navigator.of(context).pushReplacementNamed("");
                    }),
                    child: Text(
                      "التزامات الحالية",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )),
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "عناصر التزامات",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Color.fromARGB(255, 201, 199, 199),
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 10,
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.home,
          //       size: 30,r
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
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.normal),
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
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.normal),
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
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.normal),
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
                margin: EdgeInsets.only(top: 50),
                // width: double.infinity,
                // height: double.infinity,
                child: Container(
                  padding: EdgeInsets.only(top: 30, bottom: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommitmentWidget(
                        commiReqNo: 577568856587,
                        reqAdminUint: "Basel dkjhs",
                        authEntity: "dssgsgsgsgfsd",
                        authOfficer: "skdndskn",
                        submitDate: "2023/20/11",
                        forDuration: "1Q",
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed("detailscommitment");
                        },
                      ),
                      CommitmentWidget(
                        commiReqNo: 577568856587,
                        reqAdminUint: "Basel dkjhs",
                        authEntity: "dssgsgsgsgfsd",
                        authOfficer: "skdndskn",
                        submitDate: "2023/20/11",
                        forDuration: "1Q",
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed("detailscommitment");
                        },
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
