import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomm/screens/cart.dart';
import 'package:ecomm/screens/categories.dart';
import 'package:ecomm/screens/credit_card.dart';
import 'package:ecomm/screens/index.dart';
import 'package:ecomm/screens/login.dart';
import 'package:ecomm/screens/payment.dart';
import 'package:ecomm/screens/photo_view.dart';
import 'package:ecomm/screens/pro_details.dart';
import 'package:ecomm/screens/pro_details2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int currentIndex = 0;

   List<Widget> pages;
  Widget currentPage;

    Cart _cart;
    Payment _payment;
    CreditCard _creditCard;
    Home _home;
  
  @override
  void initState() {

  
  _cart=Cart();
  _payment=Payment();
  _creditCard=CreditCard();
  _home=Home();

     pages = [_home,_cart, _payment, _creditCard];
   setState(() {
      currentPage = _home;
   });
    
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // //  elevation: 10,
      //   //backgroundColor: Colors.white,
      //   title: Center(child: Text('Ecommerce App')),
      // ),
     body: IndexedStack(
    index: currentIndex,
    children: pages,
  ),
   bottomNavigationBar: BottomNavyBar(
   selectedIndex: currentIndex ,
   showElevation: true, // use this to remove appBar's elevation
   onItemSelected: (index) => setState(() {
              currentIndex = index;
              currentPage = pages[index];
              // currentPage.animateToPage(index,
              //     duration: Duration(milliseconds: 300), curve: Curves.ease);
    }),
   items: [
     BottomNavyBarItem(
       icon: Icon(Icons.apps),
       title: Text('الرئيسية'),
       activeColor: Colors.red,
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.people),
         title: Text('السلة'),
         activeColor: Colors.purpleAccent
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.message),
         title: Text('الدفع'),
         activeColor: Colors.pink
     ),
     BottomNavyBarItem(
         icon: Icon(Icons.settings),
         title: Text('حسابي'),
         activeColor: Colors.blue
     ),
   ],
),
       
    );
  }
  }


