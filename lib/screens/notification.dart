import 'package:flutter/material.dart';
class MyNotifications extends StatefulWidget {
  @override
  _MyNotificationsState createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(

              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.notifications_active,color: Colors.blue,),
                    title: Text('اشعارات من اليوتيوب',style: TextStyle(fontSize:14, fontWeight: FontWeight.bold),),
                    subtitle: Text('يرجى عمل اشتراك ولايك للقناة وتفعيل زر التنبيهات'),
                    
                  ),
                 index%2==0?
                  
                  Padding(
                    padding: const EdgeInsets.only(right:70.0,left: 10,top: 10,bottom: 10),
                    child: Container(
                      height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/m2.jpg'),fit: BoxFit.fill)
                    ),
                    ),
                  ):
                  Center(),
                ],
              ),

            ),
          );
          
        },

      ),
      
    );
  }
}