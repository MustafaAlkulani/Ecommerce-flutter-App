import 'package:ecomm/screens/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Payment'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('طرق الدفع'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ' Visa Card ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            ' select',
                            style:
                                TextStyle(fontSize: 16, color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ' PayPal ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            ' select',
                            style:
                                TextStyle(fontSize: 16, color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ' MasterCard ',
                            style: TextStyle(fontSize: 16),
                          ),
                          FlatButton(onPressed: (){
                            Get.to(CreditCard());

                          }, child: Text('select'))
                          // Text(
                          //   ' select',
                          //   style:
                          //       TextStyle(fontSize: 16, color: Colors.indigo),
                          // ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey[400],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            ' creditCard ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            ' select',
                            style:
                                TextStyle(fontSize: 16, color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Other Summery',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' 7 times ',
                        style: TextStyle(fontSize: 16),
                      ),
                     
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' اجمالي الطلبات ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' 2504\$',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                              Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' التوصيل  ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' مجاني',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                    Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' اجمالي الدفع  ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' 2999\$',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),
              ],
            )
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'العنوان',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' الدولة ',
                        style: TextStyle(fontSize: 16),
                      ),
                       Text(
                        ' اليمن ',
                        style: TextStyle(fontSize: 16),
                      ),
                     
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '  المحافظة ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' صنعاء',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                              Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' المديرية  ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' السبعين',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),

                    Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, bottom: 16.0, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        ' الشارع   ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' 19, aden ,502',
                        style: TextStyle(fontSize: 16, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey[400],
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(onPressed: null, child: Text('تغيير  ')),
                             Text('|'),
                            FlatButton(
                                onPressed: null, child: Text('اضافة  عنوان جديد')),
                          ],
                        ),
                  ),
              ],
            )
            ),
          )

        ],
      ),
    );
  }
}
