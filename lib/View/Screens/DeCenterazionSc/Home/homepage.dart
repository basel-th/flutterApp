import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Constants/TitlesConstTexts.dart';
import 'package:mininstryoffinance/View/Widgwts/BoxHomPage.dart';
import 'package:mininstryoffinance/View/Widgwts/SubDrawerwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                "${TitlesConstText.Home}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                padding:
                    EdgeInsets.only(bottom: 80, top: 80, right: 5, left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoxHomePage(
                      title: "${TitlesConstText.NewCommintement}",
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed("newcommitment");
                      },
                    ),
                    BoxHomePage(
                      title: "${TitlesConstText.Commintements}",
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed("elemntcommitment");
                      },
                    ),
                    BoxHomePage(
                      title: "${TitlesConstText.Setteings}",
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed("settings");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
