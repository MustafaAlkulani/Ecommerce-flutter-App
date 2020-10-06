import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}


class _CartState extends State<Cart> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Center(child: Text('Ecommerce App')),
      ),
      body: Shimmer.fromColors(
         baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                enabled: true,
                 period: Duration(seconds:1000),

              
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('السلة',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                    'الاجمالي  :2500\$',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
               physics: ClampingScrollPhysics(), 
             //   physics:ScrollPhysics(parent: ) ,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 0.0, bottom: 0.0, left: 8, right: 8),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                  'https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg',
                                ),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('فنيلة عالية الجودة',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  ' النوع الصنف',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ' السعر : 1200\$',
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '1250\$ ',
                                  style: TextStyle(
                                    decorationStyle: TextDecorationStyle.wavy,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 5.0,
                        ),
                        Divider(
                          height: 2.0,
                          color: Colors.grey[400],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(onPressed: null, child: Text('حذف ')),
                            Text('|'),
                            FlatButton(
                                onPressed: null,
                                child: Text('اضافة الى السلة')),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.vertical,
            ),

            SizedBox(
              height: 2,
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
                              ' الاجمالي ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              ' 1500\$',
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
                              ' الاجمالي ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              ' 1500\$',
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
                              ' الضريبة ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              ' 1500\$',
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
                              ' الاجمالي ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              ' 1500\$',
                              style: TextStyle(fontSize: 16),
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
              padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
              child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.indigo,
                  elevation: 0.0,
                  child: MaterialButton(
                    onPressed: () async {},
                    minWidth: MediaQuery.of(context).size.width,
                    child: Text(
                      "شراء المنتجات  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  )),
            ),

            // ListView.builder(
            //   scrollDirection: Axis.vertical,
            //   itemCount: 5,
            //   itemBuilder: (context, int index) {
            //     return Card(
            //       elevation: 10,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: <Widget>[
            //           Row(
            //             children: <Widget>[
            //               Container(
            //                 height: 20,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(
            //                   fit: BoxFit.cover,
            //                   image: CachedNetworkImageProvider(
            //                     'https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg',
            //                   ),
            //                 )),
            //               ),
            //               Column(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: <Widget>[
            //                   Text('title of product'),
            //                   Text(' type'),
            //                   Text('price'),
            //                   Text('old price '),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5.0,
            //               ),
            //               Divider(
            //                 height: 1.0,
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: <Widget>[
            //                   FlatButton(onPressed: null, child: Text('remove')),
            //                   FlatButton(
            //                       onPressed: null,
            //                       child: Text('add to wishlist')),
            //                 ],
            //               ),
            //             ],
            //           )
            //         ],
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
