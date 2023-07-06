import 'package:cloud_firestore/cloud_firestore.dart';

class OperationCloud {
  static Future<void> createMessage(
      {required String idTo,
      required String idFrom,
      required String content,
      required String type}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    Map<String, dynamic> map = {
      "idTo": idTo,
      "idFrom": idFrom,
      "content": content,
      "type": type,
    };
    await firestore.collection("chat").add(map);
    await firestore.collection("new_chat").doc(idTo).set(map);
  }

  void test() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference collectionReference = firestore.collection("chat");
    collectionReference.snapshots();
    Stream <QuerySnapshot> snaps = firestore.collection("chat").snapshots();
    firestore.collection("chat").snapshots();
  }
}
