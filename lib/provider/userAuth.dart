import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAuth{

  bool auth(){

  FirebaseAuth auth = FirebaseAuth.instance;

if (auth.currentUser != null) {
  return true;
}
  else return false;
}

  

Future <void> create(data)async{
  if(auth()){

    // ignore: deprecated_member_use
    Firestore.instance.collection('product').add(data);

    // Firestore.instance.runTransaction((transaction) => CollectionRefrence )

  }

}

}