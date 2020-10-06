import 'dart:async';

import 'package:ecomm/db/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum Status{Uninitialized, Authenticated, Authenticating, Unauthenticated}

class UserProvider with ChangeNotifier{
  // FirebaseAuth _auth;
  // FirebaseUser _user;
  FirebaseAuth _user;
  // _user=_auth.user;
  Status _status = Status.Uninitialized;
  Status get status => _status;
  FirebaseAuth get user => _user;
  
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  UserServices _userServices = UserServices();

FirebaseAuth _auth = FirebaseAuth.instance;
  // UserProvider.initialize(): _auth = FirebaseAuth.instance{

  //    _auth.authStateChanges();
  }
  

  Future<bool> signIn(String email, String password)async{
 try {
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }


  Future<bool> signUp(String name,String email, String password)async{
     try {
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e.toString());
}
  }

  Future signOut()async{
    // _auth.signOut();
    // _status = Status.Unauthenticated;
    // notifyListeners();
    // return Future.delayed(Duration.zero);
  }



  // Future<void> _onStateChanged(FirebaseAuth user) async{
  //   if(user == null){
  //     _status = Status.Unauthenticated;
  //   }else{
  //     _user = user;
  //     _status = Status.Authenticated;
  //   }
  //   notifyListeners();
  // }
