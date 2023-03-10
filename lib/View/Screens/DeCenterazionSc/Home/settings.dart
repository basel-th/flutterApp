import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';

class Seittings extends StatefulWidget {
  const Seittings({super.key});

  @override
  State<Seittings> createState() => _SeittingsState();
}

class _SeittingsState extends State<Seittings> {
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
                "${TitlesConstText.Setteings}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
        ),
        drawer: SubDrawerWidget(),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text("data")),
      ),
    );
  }
}
