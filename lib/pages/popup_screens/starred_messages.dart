import 'package:flutter/material.dart';
import 'package:whatsapp/models/all_colors.dart';

class StarredMessages extends StatefulWidget {
  @override
  _StarredMessagesState createState() => _StarredMessagesState();
}

class _StarredMessagesState extends State<StarredMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Starred messages"),),
   body: Center(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Container(
           height: 160,
           width: 160,
           child: Icon(Icons.star,color: Colors.white,size: 80,),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(160),
             color: secondPrimaryColor
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 68,vertical: 40),
           child: Text("Tap and hold on any message in any chat to start it,so you can easily find it later.",style: 
           TextStyle(
             fontSize: 20
           )
           ,),
         )
       ],
     ),
   ),
    );
  }
}