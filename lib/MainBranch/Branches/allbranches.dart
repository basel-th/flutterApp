import 'package:flutter/material.dart';

class AllBranches extends StatefulWidget {
  const AllBranches({super.key});

  @override
  State<AllBranches> createState() => _AllBranchesState();
}

class _AllBranchesState extends State<AllBranches> {
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
                "الفروع",
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
        body: ListView(
          children: [
            Container(
                child: Container(
              padding: EdgeInsets.only(top: 30, bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).pushReplacementNamed("Branch");
                    }),
                    child: Container(
                        height: 420,
                        width: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text(
                                    ":رقم الهاتف",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    ":اسم الفرع",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text(
                                    ":كلمة  المستخدم",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    ":اسم المستخدم",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    border: Border.all(
                                        color: Color.fromARGB(255, 160, 15, 4),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: InkWell(
                                    onTap: (() {
                                      Navigator.of(context)
                                          .pushReplacementNamed("");
                                    }),
                                    child: Text(
                                      "حدف",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                        color: Color.fromARGB(255, 7, 155, 12),
                                        width: 2),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: InkWell(
                                    onTap: (() {
                                      Navigator.of(context)
                                          .pushReplacementNamed("");
                                    }),
                                    child: Text(
                                      " تعد يل",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
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
