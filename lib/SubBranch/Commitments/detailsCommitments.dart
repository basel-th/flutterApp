import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Widgwts/commitwidget.dart';
import 'package:mininstryoffinance/Widgwts/detailscommitmenwiget.dart';
import 'package:mininstryoffinance/Widgwts/requestconsttexts.dart';

class DetailsCommitment extends StatefulWidget {
  const DetailsCommitment({super.key});

  @override
  State<DetailsCommitment> createState() => _DetailsCommitmentState();
}

class _DetailsCommitmentState extends State<DetailsCommitment> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterTop,
        floatingActionButton: Container(
            margin: EdgeInsets.only(top: 300),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(234, 34, 34, 34),
              borderRadius: BorderRadius.circular(0),
            ),
            height: 300,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Commitment Request Number:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " 878686 ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Requesting Administrative Unit:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " Aden ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Authorizing entity:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " Aden ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Authorizing Officer:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " Aden ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Submission Date:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " 2023/2/12 ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "For Year/Quarter/Month:",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      " 2023/2/12 ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (() {
                        Navigator.of(context).pushReplacementNamed("newrquest");
                      }),
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                              color: Color.fromARGB(255, 64, 112, 151),
                              width: 1),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Text(
                          " اضافة طلب جديد ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "تفاصيل التزام",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
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
                // width: double.infinity,
                // height: double.infinity,
                child: Container(
              padding: EdgeInsets.only(top: 280, bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCommitentsWedight(
                    Chpter: "one",
                    Part: "tow",
                    Type: "rmfodm",
                    Item: "flfl",
                    Cotineues: "no",
                    Date: "2033/20/22",
                    Aomuant: "390202",
                    BlanceAfterApporved: "lmfcmnsdmd",
                    Descrption: "momndonmfonmdofmndomfomdom",
                  ),
                  DetailsCommitentsWedight(
                    Chpter: "lnmolnon",
                    Part: "nlolnlknl",
                    Type: "rmfodm",
                    Item: "flfl",
                    Cotineues: "no",
                    Date: "2033/20/22",
                    Aomuant: "390202",
                    BlanceAfterApporved: "lmfcmnsdmd",
                    Descrption: "momndonmfonmdofmndomfomdom",
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
