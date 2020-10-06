import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailsTall extends StatefulWidget {
  @override
  _DetailsTallState createState() => _DetailsTallState();
}

class _DetailsTallState extends State<DetailsTall> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/ //(size.height - kToolbarHeight - 24) / 2;
    final double itemHeight = size.height / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 16,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                mainAxisSpacing: 10.0),
            itemBuilder: (_, int index) {
              return GestureDetector(
                onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context){
                  //    return CategoryList();
                  //  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, bottom: 5, right: 2, left: 2),
                  child: Container(
                    //  height: 500,

                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            // height: 110,

                            // width: double.infinity,
                            decoration: BoxDecoration(
                                // color: Colors.yellow,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    'https://th.bing.com/th/id/OIP.5kzq0j_NwOez7y_faS9wwwHaHa?pid=Api&rs=1',
                                  ),
                                )),
                            // child:
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('name of product'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '200\$',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
            //  itemCount: 8,

            ),
      ),
    );
  }
}
