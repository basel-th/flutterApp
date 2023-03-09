import 'package:flutter/material.dart';
import 'package:mininstryoffinance/Widgwts/commitconsttexts.dart';
import 'package:mininstryoffinance/Widgwts/elmentcontent.dart';

class CommitmentWidget extends StatelessWidget {
  const CommitmentWidget({
    Key? key,
    this.onTap,
    this.commiReqNo,
    this.reqAdminUint,
    this.authEntity,
    this.authOfficer,
    this.submitDate,
    this.forDuration,
  }) : super(key: key);

  final commiReqNo;
  final reqAdminUint;
  final authEntity;
  final authOfficer;
  final submitDate;
  final forDuration;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 400,
          width: 400,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElementContent(
                title: CommitConstTexts.commitReqNo,
                value: commiReqNo,
              ),
              ElementContent(
                title: CommitConstTexts.commitAutUint,
                value: reqAdminUint,
              ),
              ElementContent(
                title: CommitConstTexts.commitAuthEntity,
                value: authEntity,
              ),
              ElementContent(
                title: CommitConstTexts.commitAuthOfficer,
                value: authOfficer,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElementContent(
                    title: CommitConstTexts.commitSubmitDate,
                    value: submitDate,
                  ),
                  ElementContent(
                    isRow: true,
                    title: CommitConstTexts.commitForDuration,
                    value: forDuration,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
