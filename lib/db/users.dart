import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String collection = "users";

  void createUser(Map data) {
    _firestore.collection(collection).document(data["userId"]).setData(data);
  }
}