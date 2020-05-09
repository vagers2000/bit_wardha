import 'dart:collection';

import 'package:bitwardha/main.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> database(Map ran) async {
  //DateTime day = DateTime.now();
  final _firestore=Firestore.instance;
  CollectionReference Jan1 = _firestore.collection("jan1");
  for(int i=1;i<71;i++) {
    ran[i.toString()] = "absent";
  }
  print("DONE");
  String newa;
  await Jan1.document("DAA").setData(ran);
  print("Done 3");
  /*await Firestore.instance
      .collection('cities')
      .document('SF')
      .get().then((DocumentSnapshot ds) {
           newa= ds.toString();
  });*/
  print("DONE2");
}