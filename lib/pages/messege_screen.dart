import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class MessegeScreen extends StatefulWidget {
  final ChatModel chat;

  const MessegeScreen({Key key, this.chat}) : super(key: key);

  @override
  _MessegeScreenState createState() => _MessegeScreenState();
}

class _MessegeScreenState extends State<MessegeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chat.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: (){},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}