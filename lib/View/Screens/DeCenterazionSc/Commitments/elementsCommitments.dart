import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/View/Widgwts/commitwidget.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';

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
                "${TitlesConstText.ElementsCommintent} ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Color.fromARGB(255, 201, 199, 199),
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 10,
        ),
        drawer: SubDrawerWidget(),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.only(top: 50),
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
