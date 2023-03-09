import 'package:flutter/material.dart';

class CurrentRquests extends StatefulWidget {
  const CurrentRquests({super.key});

  @override
  State<CurrentRquests> createState() => _CurrentRquestsState();
}

class _CurrentRquestsState extends State<CurrentRquests> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "  الطلبات الحالية",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
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
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
                " طلب جديد",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("newrquest");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.bookmark_outline),
              iconColor: Colors.blue,
              title: Text(
                "الطلبات الحالية",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("currentrquest");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.book_sharp),
              title: Text(
                "السجل ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("record");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.settings),
              title: Text(
                " الاعدادت",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("settings");
              },
            ),
            ListTile(
              trailing: Icon(Icons.exit_to_app),
              title: Text(
                " تسجيل خروج",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("load");
              },
            ),
          ]),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text("data")),
      ),
    );
  }
}
