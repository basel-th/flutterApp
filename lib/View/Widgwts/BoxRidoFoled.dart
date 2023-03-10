import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class BoxRidoFoldRequest extends StatelessWidget {
  const BoxRidoFoldRequest({
    Key? key,
    this.title,
    this.Lefttitle,
    this.righttitle,
    this.items,
  }) : super(key: key);
  final title;
  final items;
  final Lefttitle;
  final righttitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${Lefttitle}",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 140,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                underline: Divider(
                  color: Colors.transparent,
                ),
                hint: Text(
                  "${title}",
                  style: TextStyle(fontSize: 25),
                ),
                items: ["one", "skndk", "three"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  print("object");
                },
                value: "one",
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${righttitle}",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 140,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                underline: Divider(
                  color: Colors.transparent,
                ),
                hint: Text(
                  "${title}",
                  style: TextStyle(fontSize: 25),
                ),
                items: ["one", "skndk", "three"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  print("object");
                },
                value: "one",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
