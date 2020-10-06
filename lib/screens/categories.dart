import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: GridView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 1,
               mainAxisSpacing: 5),

          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                  child:             Stack(
                children: <Widget>[
                  Image.asset(
                    "images/m2.jpg",
                    height: 350,
                    fit: BoxFit.contain,
                  ),

                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          // Box decoration takes a gradient
                          gradient: LinearGradient(
                            // Where the linear gradient begins and ends
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerLeft,
                            // Add one stop for each color. Stops should increase from 0 to 1
                            colors: [
                              // Colors are easy thanks to Flutter's Colors class.
                              Colors.black.withOpacity(0.7),
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.07),
                              Colors.black.withOpacity(0.05),
                              Colors.black.withOpacity(0.025),
                            ],
                          ),
                        ),

                        child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container()
                        )),
                  ),

                  // Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: Container(
                  //       height: 350,
                  //       decoration: BoxDecoration(
                  //         // Box decoration takes a gradient
                  //         gradient: LinearGradient(
                  //           // Where the linear gradient begins and ends
                  //           begin: Alignment.bottomRight,
                  //           end: Alignment.bottomLeft,
                  //           // Add one stop for each color. Stops should increase from 0 to 1
                  //           colors: [
                  //             // Colors are easy thanks to Flutter's Colors class.
                  //             Colors.black.withOpacity(0.8),
                  //             Colors.black.withOpacity(0.6),
                  //             Colors.black.withOpacity(0.6),
                  //             Colors.black.withOpacity(0.4),
                  //             Colors.black.withOpacity(0.07),
                  //             Colors.black.withOpacity(0.05),
                  //             Colors.black.withOpacity(0.025),
                  //           ],
                  //         ),
                  //       ),

                  //       child: Padding(
                  //           padding: const EdgeInsets.only(top: 8.0),
                  //           child: Container()
                  //       )),
                  // ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('Product Blazer', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 20),),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('\$35.99', textAlign: TextAlign.end,style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      )),

                ],
              ),
                  ),
                ),
            );
           
          }
          //  itemCount: 8,

          )

      
    );
  }
}