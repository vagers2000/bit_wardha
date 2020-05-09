
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget newslist() {
  List<String> news = [
    "Higher & Technical Education Minister,Honourable Shri Uday Samant Live Facebook session",
    "WORKSHOP ON MENTAL HEALTH DURING COVID-19 ( From : 06th May to 10th May 2020 )",
    "TEQIP-III Sponsored FDP on “COMMUNICATIONS and ICT” From 5th to 10th May 2020 (12 to 1.15 PM Every Day)",
    "Online Meeting of Hon. Vice-Chancellor Prof. V. R. Sastry is scheduled on 01-05-2020 (Friday) at 4 PM with all Director/Principal of affiliated Institutes/ Colleges via Zoom",
    "Mobile Based Cloud Video Conferencing Competition",
    " “ TECHNIQUES FOR TESTING COVID-19” TRAINING ENROLLMENT IS OPEN FOR FACULTY AND STUDENTS"
  ];
  Widget onenews(int i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Text(
              news.elementAt(i),textAlign: TextAlign.left,style: TextStyle(
              fontWeight: FontWeight.w400,fontSize: 11,
            ),
            ),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          color: Colors.grey[500],
          thickness: 1,
        ),
      ],
    );
  }

  return Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: Colors.blueGrey[100],
    ),
    child: ListView(
      shrinkWrap: false,
      children: <Widget>[
        onenews(0),
        onenews(1),
        onenews(2),
        onenews(3),
        onenews(4),
        onenews(5),
      ],
    ),
  );
}
