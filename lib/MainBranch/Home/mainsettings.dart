import 'package:flutter/material.dart';

class MainSettings extends StatefulWidget {
  const MainSettings({super.key});

  @override
  State<MainSettings> createState() => _MainSettingsState();
}

class _MainSettingsState extends State<MainSettings> {
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
                "الاعدادت",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          elevation: 0,
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
                Navigator.of(context).pushReplacementNamed("MainHome");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.add),
              iconColor: Colors.blue,
              title: Text(
                "  الطلبات الاتية",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("ComeingRequest");
              },
            ),
            ListTile(
              shape: Border(bottom: BorderSide(color: Colors.blue)),
              trailing: Icon(Icons.bookmark_outline),
              iconColor: Colors.blue,
              title: Text(
                "الفروع",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                textAlign: TextAlign.end,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("AllBranches");
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
                Navigator.of(context).pushReplacementNamed("MainSettings");
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
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Text("data")),
      ),
    );
  }
}
