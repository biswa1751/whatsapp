import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class SelectContactScreen extends StatefulWidget {
  final bool callScreen;

  const SelectContactScreen({Key key, this.callScreen}) : super(key: key);

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
          icon: Icon(Icons.search,size: 25,),
          onPressed: (){},
        ),
       PopupMenuButton(
         itemBuilder: (context){
           return [PopupMenuItem(
             child: Text("Invite a friend"),
           ),
           PopupMenuItem(
             child: Text("Contacts"),
           ),
           PopupMenuItem(
             child: Text("Refresh"),
           ),
           PopupMenuItem(
             child: Text("Help"),
           )
           ];
         },
       )
      ],
    ),
    body: ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 15),
      itemBuilder: (context,i){
        if(i==0)
        {
          return ListTile(
           
            leading: CircleAvatar(child: Icon(Icons.group,color: Colors.white,),
        
            backgroundColor: Theme.of(context).accentColor,),
            title: Text(widget.callScreen? "New Group Call":"New Group ",style: TextStyle(
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
           subtitle: Text(dummyData[i].messeges),
          title: Text(dummyData[i].name),
          leading: CircleAvatar(
           backgroundImage:  NetworkImage(dummyData[i].avatarUrl),
          ),
          trailing: widget.callScreen?ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.call),
                color: Theme.of(context).primaryColor  ,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.videocam),
                color: Theme.of(context).primaryColor
              ),
            ],
          ):null,
        );
      },
      itemCount: dummyData.length+2,
    ),
    );
  }
}