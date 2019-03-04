import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class SelectContactScreen extends StatefulWidget {
  @override
  _SelectContactScreenState createState() => _SelectContactScreenState();
}

class _SelectContactScreenState extends State<SelectContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("Select Contact",style: TextStyle(
            fontSize: 17
          ),),
          Text(dummyData.length.toString()+" contacts",style: 
          TextStyle(
            fontSize: 11
          ),)
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: (){},
        ),
      ],
    ),
    body: ListView.builder(
      itemBuilder: (context,i){
        if(i==0)
        {
          return ListTile(
            leading: CircleAvatar(child: Icon(Icons.group,color: Colors.white,),
            backgroundColor: Theme.of(context).accentColor,),
            title: Text("New Group",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          );
        }
        if(i==1)
        {
           return ListTile(
            leading: CircleAvatar(child: Icon(Icons.person_add,color: Colors.white,),
            backgroundColor: Theme.of(context).accentColor,),
            title: Text("New Contact",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          );
        }
        i=i-2;
        return ListTile
        (
          title: Text(dummyData[i].name),
          leading: CircleAvatar(
           backgroundImage:  NetworkImage(dummyData[i].avatarUrl),
          ),
        );
      },
      itemCount: dummyData.length+2,
    ),
    );
  }
}