import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/View/Widgwts/BoxFormFoled.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';
import 'package:mininstryoffinance/Constants/commitconsttexts.dart';

class NenCommitment extends StatefulWidget {
  const NenCommitment({super.key});
  final Found = "one";
  @override
  State<NenCommitment> createState() => _NenCommitmentState();
}

var Found = "one";
List Item = ["one", "tow", "three", "four"];

class _NenCommitmentState extends State<NenCommitment> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 62, 82, 146),
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "${TitlesConstText.NewCommintement}",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAutUint}",
                    hintText: " Enter RAU .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAuthOfficer}",
                    hintText: " Enter Auth Officer .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitAuthEntity}",
                    hintText: " Enter Auth Enttity .. ",
                  ),
                  BoxFormFiledRequest(
                    title: "${CommitConstTexts.commitForDuration}",
                    hintText: " Enter Date .. ",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 140,
                        width: 330,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${CommitConstTexts.comitFound}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "${CommitConstTexts.comitFound}",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: Item.map((e) => DropdownMenuItem(
                                      child: Text("$e"),
                                      value: e,
                                    )).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    Found = value.toString();
                                  });
                                },
                                value: Found,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 140,
                        width: 330,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "${CommitConstTexts.comitProject}",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButton(
                                underline: Divider(
                                  color: Colors.transparent,
                                ),
                                hint: Text(
                                  "${CommitConstTexts.comitProject}",
                                  style: TextStyle(fontSize: 25),
                                ),
                                items: Item.map((e) => DropdownMenuItem(
                                      child: Text("$e"),
                                      value: e,
                                    )).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    Found = value.toString();
                                  });
                                },
                                value: Found,
                              ),
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
                          margin: EdgeInsets.symmetric(vertical: 40),
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
              ),
            )),
          ],
        ),
      ),
    );
  }
}
