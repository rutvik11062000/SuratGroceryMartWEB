import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

class DBModel extends ChangeNotifier {
  // final inititalise = Firebase.initializeApp();
  final DemoRef = FirebaseFirestore.instance.collection('Demo');

  void setDemoData() {
    const data = {
      "name": "Rutvik",
    };

    DemoRef.doc('doc1').set(data);
  }
}
