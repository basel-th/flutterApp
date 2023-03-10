import 'package:flutter/material.dart';
import 'package:mininstryoffinance/MainBranch/Auth/login.dart';
import 'package:mininstryoffinance/MainBranch/Branches/allbranches.dart';
import 'package:mininstryoffinance/MainBranch/Branches/branch.dart';
import 'package:mininstryoffinance/MainBranch/Home/mainhome.dart';
import 'package:mininstryoffinance/MainBranch/Home/mainsettings.dart';
import 'package:mininstryoffinance/MainBranch/Rquests/comeingrquest.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Auth/login.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Commitments/detailsCommitments.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Commitments/elementsCommitments.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Commitments/newcommitment.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Home/homepage.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Requests/newrquest.dart';
import 'package:mininstryoffinance/View/Screens/DeCenterazionSc/Home/settings.dart';
import 'package:mininstryoffinance/View/Screens/load.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromARGB(255, 62, 82, 146),
        fontFamily: "Cairo",
      ),
      home: Loadpage(),
      routes: {
        "load": (context) => Loadpage(),
        // this for branch
        "login": (context) => Login(),
        "homepage": (context) => Home(),
        "newrquest": (context) => NewReuest(),
        "settings": (context) => Seittings(),
        "newcommitment": (context) => NenCommitment(),
        "elemntcommitment": (context) => ElmentsCommitment(),
        "detailscommitment": (context) => DetailsCommitment(),

        // this for main branch
        "Mainlogin": (context) => MainLogin(),
        "MainHome": (context) => MainHome(),
        "ComeingRequest": (context) => ComeingRequest(),
        "MainSettings": (context) => MainSettings(),
        "AllBranches": (context) => AllBranches(),
        "Branch": (context) => Branch(),
      },
    );
  }
}
