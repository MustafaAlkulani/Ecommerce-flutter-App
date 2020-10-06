import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecomm/screens/cart.dart';
import 'package:ecomm/screens/categories.dart';
import 'package:ecomm/screens/payment.dart';
import 'package:ecomm/screens/photo_view.dart';
import 'package:ecomm/screens/pro_details.dart';
import 'package:ecomm/screens/pro_details2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xeee),
      appBar: AppBar(
        //  elevation: 10,
        //backgroundColor: Colors.white,
        title: Center(child: Text('Ecommerce App')),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '  الاصناف ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: Container(
                color: Colors.white,
                height: 130.0,
                child: GridView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 1,
                        mainAxisSpacing: 1.0),
                    itemBuilder: (_, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CategoryList();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 90,

                                // color: Colors.redAccent,
                                // maxRadius: 45.0,
                                // shape: ShapeBorder.lerp(null, null, 0.5),
                                //  shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(50),
                                // backgroundColor: Colors.blue,
                                child: ClipOval(
                                  child: Image.network(
                                    'https://th.bing.com/th/id/OIP.5kzq0j_NwOez7y_faS9wwwHaHa?pid=Api&rs=1',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  'category',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    //  itemCount: 8,

                    ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ' العروض الاسبوعية ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ViewPhoto();
                }));
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 280.0,
                  color: Colors.grey,
                  child: Swiper(
                    itemCount: 10,
                    scale: 0.5,
                    fade: 0.0,

                    pagination: new SwiperPagination(),
                    // control: new SwiperControl(),
                    itemBuilder: (context, int index) {
                      return Column(
                        children: <Widget>[
                          Hero(
                            tag: 'm2.jpg',
                            child: Container(
                              height: 240,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: CachedNetworkImageProvider(
                                        'https://th.bing.com/th/id/OIP.5kzq0j_NwOez7y_faS9wwwHaHa?pid=Api&rs=1'),
                                  )),
                              // child:
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsTall();
                  }));
                },
                child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      'images/m2.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'الاكثر مبيعا ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Container(
                color: Colors.white,
                height: 250.0,
                width: 120,
                child: GridView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, mainAxisSpacing: 10.0),
                    itemBuilder: (_, int index) {
                      return Container(
                        // color: Colors.blue,
                        width: 250,
                        height: 100,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProDetails();
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 200,
                                  child: Material(
                                      color: Colors.redAccent,
                                      // maxRadius: 45.0,
                                      shape: ShapeBorder.lerp(null, null, 0.1),
                                      borderRadius: BorderRadius.circular(50),
                                      // backgroundColor: Colors.blue,
                                      child: Image.network(
                                        'https://www.thefashionisto.com/wp-content/uploads/2020/09/Male-Model-Square-Sunglasses-Suit.jpg',
                                        fit: BoxFit.fill,
                                      )
                                      //  child:
                                      // Icon(Icons.photo_album),
                                      ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text('data'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text(' data data data data'),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Cart();
                }));
              },
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Today pic'),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.asset(
                          'images/m2.jpg',
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text('الاحدث ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Payment();
                }));
              },
              child: Card(
                elevation: 10,
                child: Container(
                  height: 240.0,
                  color: Colors.grey,
                  child: Swiper(
                    itemCount: 10,
                    scale: 0.5,
                    fade: 0.0,
                    // autoplay: true,
                    // autoplayDelay: 50000,
                    // duration: 6000,
                    pagination: new SwiperPagination(),
                    viewportFraction: 0.9,
                    // layout: SwiperLayout.STACK,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            height: 240,
                            width: Get.width,
                            decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: CachedNetworkImageProvider(
                                    'https://th.bing.com/th/id/OIP.Q79x2deRCeyUvmAwrLcd9AHaE8?pid=Api&rs=1',
                                  ),
                                )),
                            // child:
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Abd Salem"),
            accountEmail: Text("ashish2911@gmail.com"),
            currentAccountPicture: CircleAvatar(
              // backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
              //     ? Colors.blue
              //     : Colors.white,
              backgroundImage: AssetImage('images/m2.jpg'),
              // child:Image.asset('images/m2.jpg',fit: BoxFit.fill,),
            ),
          ),
          Card(),
          buildListTileDrawer('Settings', Icons.settings, '/payment'),
          buildListTileDrawer('Mesages', Icons.message, '/notification'),
        ],
      )),
    );
  }
}

ListTile buildListTileDrawer(String texts, IconData icon, String route) {
  return ListTile(
    onTap: () {
      Get.toNamed(route);
    },
    leading: Icon(icon),
    title: Text(texts),
    trailing: Icon(Icons.arrow_forward),
  );
}
