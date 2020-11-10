import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class DBModel extends ChangeNotifier {
  // final inititalise = Firebase.initializeApp();
  final DemoRef = FirebaseFirestore.instance.collection('Demo');
  final productCollection = FirebaseFirestore.instance.collection('Products');

  void uploadNewProduct(Map<String, dynamic> map) {
    // print(map);
    print("hii");
    final ref = productCollection.doc();
    map['productID'] = ref.id;
    ref.set(map);
    // productCollection.doc(category).(map);
  }

  Future<void> uploadFile(String filePath) async {
    File file = File(filePath);

    try {
      await firebase_storage.FirebaseStorage.instance
          .ref('uploads/file-to-upload.png')
          .putFile(file);
      print("done");
    } on firebase_core.FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
      print("not done");
    }
  }

  void setDemoData() {
    const data = {
      "name": "Rutvik",
    };

    DemoRef.doc('doc1').set(data);
  }
}
