import 'package:flutter/material.dart';

class Wid_Favorit extends StatelessWidget {
  const Wid_Favorit ({Key key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
children: <Widget>[
  ListTile(
    leading:Icon(Icons.history),
    title: Text("Promotions") ,
    subtitle: Text("Activité recente de  vos promotions"),
  ),
  Divider(),
  ListTile(
     title: Text("Nouveau") ,
    leading: CircleAvatar(backgroundImage: AssetImage("images/7.jpg"),),
   
    subtitle: Text("Votre ami(e) Karamoko losseni est sur instagram sous le nom de Karamoko7462.25min"),
    trailing: FlatButton(
      color:Colors.blue,
      textColor: Colors.white,
      padding:EdgeInsets.all(8.0),
      onPressed: () {},
       child: Text("S'abonner", style: TextStyle(fontSize:20),
       ),
       ),
  ),
],
       )

 
      
    );
  }
}