import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      
      ),
      body: Center(
        child: Column(
           
           children: [
                       Row(
                         children: [
                           SnapBar('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','myname'),
                           SnapBar('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Samy'),
                           SnapBar('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','Sara'),
                         SnapBar('https://images.pexels.com/photos/220429/pexels-photo-220429.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','Jeson'),
                          // SnapBar('https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500','Rabee'),
                           ],
                       ),
             CardWidget('Edward','i will call u back','15.aug','https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
             CardWidget('Alia',"it's not!!!!!",'12.aug','https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
             CardWidget('Ahmed',"i'am on my way",'30.jul','https://images.pexels.com/photos/4067762/pexels-photo-4067762.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
             CardWidget('Instazia','Ok','9.jul','https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
             CardWidget('frank',"Thats good, whene i finsh i'll call u",'6.jun','https://images.pexels.com/photos/1615776/pexels-photo-1615776.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
 
 ],

          // mainAxisAlignment: MainAxisAlignment.start,
          // children: [
          //   CircleAvatar(
          //     foregroundImage: NetworkImage(
          //       'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          //       ),
          //     maxRadius: 30,
          //   ),
          //   Text(
          //     'The Name is Hear',
          //     style: TextStyle(fontSize: 12),
          //   ),
         // ],

        //  SnapBar('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940','myname');
        ) 
      ,),
    );
  }
}



class SnapBar extends StatelessWidget{
  
  final String foto;
  final String name;
  const SnapBar(this.foto,this.name,{Key?key}):super (key: key);
  
  @override
 Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              foregroundImage: NetworkImage(
                '$foto',
                ),
              maxRadius: 30,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 12),
            ),
          ],
      ),
      );
  }
}



class CardWidget extends StatelessWidget {
  final String foto;
  final String name;
  final String chat;
  final String date;
  const CardWidget( this.name,this.chat,this.date,this.foto,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
              foregroundImage: NetworkImage(
                '$foto',
                ),
              maxRadius: 20,
            ),

              SizedBox(
                width: 8,
              ),
              Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
              
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.start,
                    
                  ),
                  Row(
                    children: [
                      Text(
                        '$chat',
                        style: TextStyle(fontSize: 10, ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                  Text(
                    '$date',
                    style: TextStyle(fontSize: 10, ),
                  ),
                ],
                  ),
                    ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940