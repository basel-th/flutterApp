import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/View/Widgwts/detailscommitmenwiget.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';

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
            margin: EdgeInsets.only(top: 260),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(234, 34, 34, 34),
              borderRadius: BorderRadius.circular(0),
            ),
            height: 260,
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
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 40,
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
                "${TitlesConstText.DetailsCommintent}",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
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
                child: Container(
              padding: EdgeInsets.only(top: 280, bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DetailsCommitentsWedight(
                    Chpter: "one",
                    Part: "tow",
                    Type: "dlmlfmf",
                    Item: "flfl",
                    Cotineues: "no",
                    Date: "2033/20/22",
                    Aomuant: "39020245343435535554647364734674364764736",
                    BlanceAfterApporved: "lmfcmnsdmenkdebjebjbdjebjebjdbd",
                    Descrption:
                        "momndonmfonmdofmnddkwlkndhiwhdihwdodsljdojdenkdnkdnkrrhwodjowjodwjwojowjdowjodjodjihiwhdidhiwhomfomdom",
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
