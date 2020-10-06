import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  TextEditingController _cardhoder = TextEditingController();
  TextEditingController _expirDate = TextEditingController();
  TextEditingController _cardNumber = TextEditingController();
  TextEditingController _ccv = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: Get.width - 10,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5) ),

                image:
                    DecorationImage(fit: BoxFit.fill,
                      image: AssetImage('images/OIP.jpg')),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                  labelText: 'Card Number'),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(19),
                CreditCardFormatter(),
              ],
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                  labelText: 'Expire Date',
                  hintText: 'dd/MM/yyyy'),
              keyboardType: TextInputType.number,
              inputFormatters: [
                WhitelistingTextInputFormatter(RegExp(r'\d+|-|/')),
                DateInputFormatter(),
              ],
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  isDense: true,
                  labelText: 'CCV ',
                  hintText: '123,12'),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                ThousandsFormatter(),
              ],
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
          //   child: Material(
          //     borderRadius: BorderRadius.circular(10.0),
          //     color: Colors.grey.withOpacity(0.2),
          //     elevation: 0.0,
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 12.0),
          //       child: TextField(
          //         keyboardType: TextInputType.number,
          //         inputFormatters: [
          //           CreditCardFormatter(),
          //         ],
          //       )
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
