import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Widgwts/requestconsttexts.dart';
import 'package:mininstryoffinance/Widgwts/rquestcontent.dart';

class DetailsCommitentsWedight extends StatelessWidget {
  const DetailsCommitentsWedight(
      {Key? key,
      this.Chpter,
      this.Part,
      this.Type,
      this.Item,
      this.Cotineues,
      this.Date,
      this.Aomuant,
      this.BlanceAfterApporved,
      this.Descrption})
      : super(key: key);
  final Chpter;
  final Part;
  final Type;
  final Item;
  final Cotineues;
  final Date;
  final Aomuant;
  final BlanceAfterApporved;
  final Descrption;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Reuestcontentelment(
            isRow: true,
            LifTtitle: RquestConstText.Chpter,
            LeftValue: Chpter,
            RightTitle: RquestConstText.Part,
            RightValue: Part,
          ),
          Reuestcontentelment(
            isRow: true,
            LifTtitle: RquestConstText.Type,
            LeftValue: Type,
            RightTitle: RquestConstText.Item,
            RightValue: Item,
          ),
          Reuestcontentelment(
            isRow: false,
            isCloum: true,
            title: RquestConstText.Contineues,
            value: Cotineues,
          ),
          Reuestcontentelment(
            isRow: false,
            isCloum: true,
            title: RquestConstText.Date,
            value: Date,
          ),
          Reuestcontentelment(
            isRow: false,
            isCloum: true,
            title: RquestConstText.Aomuant,
            value: Aomuant,
          ),
          Reuestcontentelment(
            isRow: false,
            isCloum: false,
            title: RquestConstText.BlanceAfterApporved,
            value: BlanceAfterApporved,
          ),
          Reuestcontentelment(
            isRow: false,
            isCloum: false,
            title: RquestConstText.Descrption,
            value: Descrption,
          ),
        ],
      ),
    );
  }
}
