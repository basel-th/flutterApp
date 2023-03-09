import 'package:flutter/material.dart';

class Loadpage extends StatefulWidget {
  const Loadpage({super.key});

  @override
  State<Loadpage> createState() => _LoadpageState();
}

class _LoadpageState extends State<Loadpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroung.png"), fit: BoxFit.cover),
        ),
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 130, right: 40, bottom: 50, left: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Image.asset("images/logo.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("Mainlogin");
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 30),
              width: 200,
              height: 60,
              child: Text(
                "فرع الرئيسي",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Cairo"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("login");
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(top: 30),
              width: 200,
              height: 60,
              child: Text(
                "فرع ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
