import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/wid_add.dart';
import '../widget/wid_compte.dart';
import '../widget/wid_favorite.dart';
import '../widget/wid_search.dart';
import '../screen/home.dart';

class Insta extends StatefulWidget {
  @override
  _InstaState createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  int pageIndex = 0;
  List<Widget> viewList = [
    Home(),
    Wid_Search(),
    Wid_Add(),
    Wid_Favorit(),
    Wid_Compte(),
  ];
  void onTapped(int index){
    setState(() {
      pageIndex = index;
    });
  }
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body:viewList.elementAt(pageIndex),
       backgroundColor: Colors.red,
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor:Colors.white,
         unselectedItemColor: Colors.grey,
         selectedItemColor:Colors.black,
         currentIndex:pageIndex,
         onTap:onTapped,
         items: <BottomNavigationBarItem>[
           BottomNavigationBarItem(
        title: Text(
             "",
           ),
           icon:Icon(
             Icons.home,
           size:33,

           ),
           ),
           BottomNavigationBarItem(
             title: Text(
               "",
             ),
             icon:Icon(
               Icons.search,
               size: 30,
             ) ,
             ),
             BottomNavigationBarItem(
               title: Text(
                 "",
               ),
               icon: Icon(
                 Icons.add_box,
                 size: 30,

               ),
                 ),
                 BottomNavigationBarItem(
                   title: Text(
                     "",
                   ),
                   icon:Icon(
                     Icons.favorite_border,
                     size: 30,

                   ),
                   ),
                   BottomNavigationBarItem(
                     title: Text(
                       "",
                     ),
                     icon:CircleAvatar(
                       maxRadius:15,
                       backgroundImage: AssetImage("images/3.jpg"),
                     ),
                  ),
         ]
       ),
     );
   }
    
  }


