import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.red,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black54, Colors.red],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 50),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Calling...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16),),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text('Siya Kholer', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text('Home +91 847389293', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset('images/girl.jpg', height: 150, width: 150, fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.add, color: Colors.grey, size: 40),
                        Text('Add call', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.videocam, color: Colors.grey, size: 40),
                        Text('Video cal', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.bluetooth, color: Colors.white, size: 40),
                        Text('Bluetooth', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.volume_up, color: Colors.green, size: 40),
                        Text('Speaker', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.mic_off, color: Colors.grey, size: 40),
                        Text('Mute', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.dialpad, color: Colors.white, size: 40),
                        Text('Keypad', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 70, width: 70,
                  child: Icon(Icons.phone, color: Colors.red, size: 40,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35))
                  ),
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        ),
      )
    );
  }





}










// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
 
// void main() => runApp(MyApp());
 
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Circle Image View',
//       theme: ThemeData(
//         //primarySwatch: Colors.black38,
//         primaryColor: Color.fromRGBO(60, 63, 64, 1),
//         accentColor: Color.fromRGBO(42, 42, 42, 1)
//       ),
//       home: MyHomePage(title: 'Circle Image View'),
//     );
//   }
// }
 
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
 
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
 
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Color.fromRGBO(197, 103, 99, 1),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Expanded(
//                 child: Center(child: CircularImage('images/face.jpg'))),
//             Container(
//               height: 110,
//               decoration: new BoxDecoration(
//                   color: Colors.grey[850],
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black,
//                       blurRadius: 25.0, // soften the shadow
//                       spreadRadius: 5.0, //extend the shadow
//                       offset: Offset(
//                         15.0, // Move to right 10  horizontally
//                         15.0, // Move to bottom 10 Vertically
//                       ),
//                     )
//                   ],
//                   borderRadius: new BorderRadius.only(
//                     topLeft: const Radius.circular(80.0),
//                     topRight: const Radius.circular(80.0),
//                   )
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   //crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Circular Image View', style: TextStyle(color: Colors.white, fontSize: 18)),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }
 
// class CircularImage extends StatelessWidget {
//   final String imagePath;
 
//   CircularImage(this.imagePath);
 
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200.0,
//       height: 200.0,
//       decoration: new BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(color: Colors.teal, width: 10.0, style: BorderStyle.solid),
//           image: new DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(imagePath)
//           )
//       ),
//     );
//   }
// }




















// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//   AnimationController animationController;
//   Animation animation;

//   @override
//   void initState() {
//     // TODO: implement initState
//     animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 5000));
//     animationController.repeat(reverse: true);
//     animation = Tween(begin: 0.0, end: 1.0).animate(animationController)..addListener(() {
//       setState(() {

//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //startAnim();
//     return Scaffold(

//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//               gradient: RadialGradient(
//                   center: Alignment(animation.value,animation.value),
//                   focal: Alignment( 0.3, - animation.value + 0.6),
//                   focalRadius: 1.5,
//                   colors: [Colors.purple,Colors.deepPurple, Colors.purple])
//           ),
//         )
//       ),
//     );
//   }
// }