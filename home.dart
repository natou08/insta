import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/wid_home.dart';

class Home extends StatelessWidget {
  const Home({Key key}): super(key :key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:2,
        leading:Icon(
          Icons.camera_alt,
          color:Colors.black,
          size:35,
        ),
        title:Container(
          padding:EdgeInsets.only(left:5, top:10, right:20),
          child: Text(
            "instagram",
            style:TextStyle(
              fontFamily:'billabong',
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          height: 45,
        ),
        actions: <Widget>[
          Padding(
            padding:const EdgeInsets.all(0),
            child:CircleAvatar(
              backgroundColor: Colors.white,
              child:IconButton(
                color: Colors.black,
                icon: Icon(Icons.send,
                size:25,
                ),
                 onPressed: (){}),
            ),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(vertical:0),
             child:Container(
             height: 100,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount:10 ,
               itemBuilder: (context,i){
                 return Container(
                   child:Column(
                     children: <Widget>[
                       Padding(
                         padding:(i == 0) 
                         ? const EdgeInsets.symmetric(
                           horizontal:8.0,
                           vertical: 15,
                         )
                         :const EdgeInsets.symmetric(
                           horizontal:8.0,
                           vertical: 10,
                         ),
                         child: Stack(
                          children: <Widget>[
                            Container(
                              width: (i == 0) ? 50: 60,
                              height: (i == 0) ? 50 : 60,
                              decoration: BoxDecoration(
                                shape:BoxShape.circle,
                                gradient:(i == 0)
                                    ? LinearGradient(colors:[
                                      Colors.black87,
                                      Colors.black
                                    ])
                                    : LinearGradient(colors: [
                                        Color(0XFFF09433),
                                         Color(0XFFE6683C),
                                          Color(0XFFDC2743),
                                           Color(0XFFCC2366),
                                            Color(0XFFBC1888),
                                    ]),
                              ),
                              child:Padding(
                                padding :const EdgeInsets.all(2),
                                child:Container( 
                                  width:60,
                                  height: 60,
                                  decoration:BoxDecoration(
                                    gradient:LinearGradient(colors:[
                                      Colors.red,
                                      Colors.yellow,
                                    ]),
                                    color:Colors.grey[300],
                                    borderRadius: 
                                          BorderRadius.circular(100),
                                  ),
                                  child:ClipOval(
                                    child:(i == 0) 
                                    ? Image.asset("images/5.jpg")
                                    : Image.asset("images/7.jpg"),                     ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom:0,
                          right: 0,
                          child:(i == 0)
                          ? CircleAvatar(
                            maxRadius:10,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.add,
                              color:Colors.white,
                              size:15,
                            ),
                            )
                            : CircleAvatar(
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.symmetric(horizontal:5),
                      child:(i==0)
                      ? Text(
                        "Votre story",
                        style: TextStyle(color:Colors.black),
                      )
                      : Text("prunelle",
                      style:TextStyle(color:Colors.black),
                      ),
                      ),
                     ],
                    ),
                 );
               },
             ),
             ),
           ),
           Padding(
             padding: EdgeInsets.all(5),
             child:Divider(
               color: Colors.grey,
             ),
           ),
           ...publication(context),
           Divider(),
           Suggestion(),
           Divider(),
           ...publication(context),
           Divider(),
           Story(),
            ],
            ),
                 ),
              
    );
  }
}