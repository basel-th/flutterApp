import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
                " الرئيسة",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
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
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
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
                "   الطلبات الاتية",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
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
        body: ListView(
          children: [
            Container(
              // width: double.infinity,
              // height: double.infinity,
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 80, top: 80, right: 5, left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 300,
                          padding: EdgeInsets.symmetric(vertical: 25),
                          margin: EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: Text(
                              "  الطلبات الاتية",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("ComeingRequest");
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 300,
                          padding: EdgeInsets.symmetric(vertical: 25),
                          margin: EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: Text(
                              "  الفروع",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("AllBranches");
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 150,
                          width: 300,
                          padding: EdgeInsets.symmetric(vertical: 50),
                          margin: EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            iconColor: Colors.blue,
                            title: Text(
                              "  الاعدادت",
                              style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("MainSettings");
                            },
                          ),
                        ),
                      ],
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
