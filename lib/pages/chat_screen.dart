import 'package:flutter/material.dart';
import 'package:whatsapp/pages/messege_screen.dart';
import 'package:whatsapp/pages/select_contact_screen.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) {
          return Column(
            children: <Widget>[

              new ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MessegeScreen(
                            chat: dummyData[i],
                          )));
                },
                leading: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(55),
                      image: DecorationImage(
                          image: NetworkImage(dummyData[i].avatarUrl),
                          fit: BoxFit.cover)),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                subtitle: new Text(dummyData[i].messeges),
              ),
              new Divider(
                height: 10.0,
                indent: 80,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SelectContactScreen(
                    callScreen: false,
                  )));
        },
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
