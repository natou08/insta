import 'package:flutter/material.dart';
import'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../providers/data/datastory.dart';
import '../providers/data/datasuggest.dart';
import '../providers/data/datapublish.dart';
import '../widget/degrader.dart';

List<Widget> publication(BuildContext context){
  return listpublish
       .map(
         (item)=> Container(
           child:Column(
             children: <Widget>[
               Container(
                 child: Column(
                   children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(left:8, bottom:10),
                           child:Row(
                             children: <Widget>[
                               gradient("images/3.jpg", 40, 40),
                               SizedBox(
                                 width:10,
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text(
                                     item.nom,
                                     style: 
                                         TextStyle(fontWeight:FontWeight.bold),
                                   ),
                                   Row(
                                     children: <Widget>[
                                       Text(
                                         item.date,
                                         style:TextStyle(color: Colors.black54),
                                       ),
                                       Icon(
                                         Icons.person,
                                         size:15,
                                         color:Colors.grey,
                                       ),
                                     ],
                                   ),
                                 ],
                                 ),
                             ],
                             ),
                         ),
                         Icon(Icons.more_vert),
                       ],
                     ),
                   ],
                 ),
                 ),
                 Container(
                   padding: EdgeInsets.only(top:7),
                   height: 300,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(item.photo),
                        fit: BoxFit.cover
                     ),
                   ),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.end,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(15),
                         child: CircleAvatar(
                           maxRadius:15,
                           backgroundColor: Colors.black.withOpacity(0.8),
                           child: Icon(
                            Icons.person,
                            color:Colors.white,
                            size:15,
                           
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               Padding(
                 padding:const EdgeInsets.all(8),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Icon(
                           Icons.favorite_border,
                           color:Colors.black,
                           size:28,
                         ),
                         Padding(
                           padding:EdgeInsets.only(left:8),
                           child: Icon(
                             FontAwesomeIcons.comment,
                             color:Colors.black,
                             size: 25,
                           ),
                           ),
                           Padding(
                           padding:EdgeInsets.only(left:8),
                           child: Icon(
                             Icons.send,
                             color:Colors.black,
                             size: 25,
                           ),
                           ),
                       ],
                     ),
                     Column(
                       children: <Widget>[
                         IconButton(
                           icon:Icon(FontAwesomeIcons.bookmark),
                           onPressed:(){}),
                       ],
                       ),
                   ],
                 ) ,
                 ),
                 for (var commentItem in item.commentaires)
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Container(
                        height: MediaQuery.of(context).size.height/ 25,
                        width: MediaQuery.of(context).size.width/ 1.1,
                        child: Row(
                          children: <Widget>[
                            Text(
                              item.nom,
                              style:TextStyle(fontWeight:FontWeight.bold),
                            ),
                            SizedBox(
                              width:5
                            ),
                            Text(commentItem.msg_comment),
                          ],
                          ),
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Container(
                       height: MediaQuery.of(context).size.height/ 28,
                        width: MediaQuery.of(context).size.width/ 1.1,
                        child: Text(
                          "voir les ${item.commentaires.length} commentaires",
                          style: TextStyle(color:Colors.grey),
                        ),
                     ),
                   ],
                 ),
                 for (var replyItem in item.reponse)
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Container(
                       height: MediaQuery.of(context).size.height/ 28,
                        width: MediaQuery.of(context).size.width/ 1.1,
                        child: Text(replyItem.msg_reply),
                     ),
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     CircleAvatar(
                       maxRadius:15,
                       backgroundImage: AssetImage("images/4.jpg"),
                     ),
                     Container(
                       child: Container(
                         height: MediaQuery.of(context).size.height/ 12,
                        width: MediaQuery.of(context).size.width/ 1.1,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.white,
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(
                               horizontal:20, vertical:10,),
                             child:TextField(
                               decoration: InputDecoration(
                                 suffixIcon:Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: <Widget>[
                                     Text("🤦‍♀️"),
                                     Icon(
                                       Icons.favorite,
                                       color:Colors.red,
                                       size:20,
                                     ),
                                     Icon(
                                       Icons.add_circle,
                                       color:Colors.black26,
                                       size: 20,
                                     ),
                                   ],
                                 ),
                                 hintText: "Ajouter un commentaire...",
                                 border:InputBorder.none,
                                 hintStyle: 
                                     TextStyle(color:Colors.black26, fontSize:14),
                               ),
                             ),
                             ),
                             ),
                             ),
                            ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ],  
                             ),
                             ),
                         )
                         .toList();
                }
        class Suggestion extends StatelessWidget {
          const Suggestion({Key key}) : super(key:key);

          @override
          Widget build(BuildContext context) {
            return Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:5),
                        child: Text(
                          "Nos suggestions",
                          style:TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:5),
                        child: Text(
                          "Voir tout ",
                          style:TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/2.3,
                        width: MediaQuery.of(context).size.width,
                        color:Colors.white,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listgroup.length,
                          itemBuilder: (context,i){
                            return Container(
                              margin:EdgeInsets.all(10) ,
                              width: MediaQuery.of(context).size.width/2.5,
                              decoration:BoxDecoration(
                                color:Colors.white,
                                borderRadius:BorderRadius.circular(5),
                                border:Border.all(
                                  color:Colors.grey,
                                  width:1.0,
                                   ),
                              ),
                              child:Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Padding(
                                        padding:const EdgeInsets.all(5),
                                        child:Icon(
                                          Icons.close,
                                          color:Colors.grey,
                                          size:18,
                                        ),
                                        ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        height:100,
                                        width:100,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color:Colors.red,
                                          image:DecorationImage(
                                            fit:BoxFit.cover,
                                            image: AssetImage(listgroup[i].background),
                                             ),
                                        ),
                                      )
                                    ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          margin:EdgeInsets.only(top:20),
                                          alignment:Alignment.center,
                                          width:100,
                                          child: Text(
                                            listgroup[i].name,
                                            style:TextStyle(
                                              color:Colors.black,
                                              fontSize:15,
                                              fontWeight:FontWeight.bold ),
                                              overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Container(
                                          margin:EdgeInsets.only(top:5, left:40),
                                          alignment:Alignment.center,
                                          width: 100,
                                          child:Row(
                                            children: <Widget>[
                                              Text(
                                                "vous suit",
                                                style:TextStyle(color:Colors.black54),
                                                overflow:TextOverflow.ellipsis,
                                              ),
                                            ],
                                            ),
                                        ),
                                      ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            margin:EdgeInsets.only(left:12,top:25),
                                            height: 40,
                                            width:MediaQuery.of(context).size.width/3,
                                            decoration:BoxDecoration(
                                              color:Color(0xFF217CEF),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child:Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "S'abonner en....",
                                                  style:TextStyle(
                                                    fontSize: 12,
                                                    color:Colors.white,
                                                    letterSpacing: 1.5),
                                                ),
                                              ],
                                              ),
                                              ),
                                        ],
                                      ),
                                ],
                                ),
                            );
                          },
                        ),
                  ),
                ],
              ),
            );
          }
        }
        class Story extends StatelessWidget {
          const Story ({Key key}): super(key :key);

          @override
          Widget build(BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height/ 3,
              width: MediaQuery.of(context).size.width,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: liststory.length,
                itemBuilder:(context,i){
                  return Container(
                    margin:EdgeInsets.only(right:5, left:5),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          gradient(liststory[i].profil, 65, 65),
                          Container(
                            margin:EdgeInsets.all(10),
                            width:160,
                            child:Text(
                              liststory[i].name,
                              style:TextStyle(color:Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:Colors.red,
                      image: DecorationImage(
                        colorFilter:ColorFilter.mode(Colors.black, BlendMode.darken),
                        fit:BoxFit.cover,
                        image:AssetImage(liststory[i].background),
                        ),
                       ),
                       height: MediaQuery.of(context).size.height / 3.5,
                       width:120,
                  );
                },
                ),
              
            );
          }
        }
             