import 'dart:async';

import 'package:ecomm/provider/userAuth.dart';
import 'package:ecomm/provider/user_provider.dart';
import 'package:ecomm/widgets/common.dart';
import 'package:ecomm/widgets/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';

class AddProuduct extends StatefulWidget {
  @override
  _AddProuductState createState() => _AddProuductState();
}

class _AddProuductState extends State<AddProuduct> {
  final _AddProuductKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();
  bool hidePass = true;

  FirebaseAuth _auth = FirebaseAuth.instance;
    Future googleSignin(){

    }

   UserAuth userf=new UserAuth();

final GoogleSignIn googleSignIn = GoogleSignIn();

Future<String> signInWithGoogle() async {
  await Firebase.initializeApp();

  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final UserCredential authResult = await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  if (user != null) {
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final User currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);

    print('signInWithGoogle succeeded: $user');

    return '$user';
  }

  return null;
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}


  Future<FirebaseAuth> AddProuduct(email, password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
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

  @override
  Widget build(BuildContext context) {
    final user = Status.Unauthenticated;

    return Scaffold(
      key: _key,
      body: user == Status.Authenticating
          ? Loading()
          : Stack(
              children: <Widget>[
                // SizedBox(height: 100.0,),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text('ادخل بيانات المنتج '),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[350],
                          blurRadius:
                              20.0, // has the effect of softening the shadow
                        )
                      ],
                    ),
                    child: Form(
                        key: _AddProuductKey,
                        child: ListView(
                          children: <Widget>[
                            
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                      controller: _name,
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle( ),
                                        labelText: 'الاسم بالكامل',
                                          hintText: "ادخل اسمك",
                                          icon: Icon(Icons.person_outline),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return "يجب ان يحتوي على  نص ";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                             Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                      controller: _email,
                                      decoration: InputDecoration(
                                        labelText: 'الاسم بالكامل',
                                          hintText: "رقم التلفون",
                                          icon: Icon(Icons.phone),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                        
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                           
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                     // controller: _email,
                                      decoration: InputDecoration(
                                        labelText: 'الاسم بالكامل',
                                          hintText: "الاسم  ",
                                          icon: Icon(Icons.photo_album),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        if (value.isEmpty) {
                                         
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.2),
                                elevation: 0.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: ListTile(
                                    title: TextFormField(
                                      controller: _password,
                                      obscureText: hidePass,
                                      decoration: InputDecoration(
                                        labelText: 'الاسم بالكامل',
                                          hintText: "كلمة المرور",
                                          icon: Icon(Icons.lock_outline),
                                          border: InputBorder.none),
                                      validator: (value) {
                                        // if (value.isEmpty) {
                                        //   return "The password field cannot be empty";
                                        // } else if (value.length < 6) {
                                        //   return "the password has to be at least 6 characters long";
                                        // }
                                        // return null;
                                      },
                                    ),
                                    trailing: IconButton(
                                        icon: Icon(Icons.remove_red_eye),
                                        onPressed: () {
                                          setState(() {
                                            hidePass = false;
                                          });
                                        }),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  14.0, 8.0, 14.0, 8.0),
                              child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.green,
                                  elevation: 0.0,
                                  child: MaterialButton(
                                    onPressed: () async {
                                      if (_AddProuductKey.currentState.validate()) {
                                      await userf.create({
                                        'image':_email.text,
                                        'name':_name.text,
                                        'quantity':10,
                                      });
                                      
                                    
                                        changeScreenReplacement(
                                            context, HomePage());
                                      }
                                    },
                                    minWidth: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "Sign up",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                  )),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "I already have an account",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ))),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Or sign up with",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.fromLTRB(
                                  //       8.0, 8.0, 0.0, 2.0),
                                  //   child: Material(
                                  //       child: MaterialButton(
                                  //           onPressed: () async {
                                  //             signInWithGoogle();
                                  //           },
                                  //           child: Image.asset(
                                  //             "images/ggg.png",
                                  //             width: 30,
                                  //           ))),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: Material(
                                        child: MaterialButton(
                                            onPressed: () async {
                                              signInWithGoogle();
                                            },
                                            child: Image.asset(
                                              "images/ggg.png",
                                              width: 30,
                                            ))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
    );
  }
}
