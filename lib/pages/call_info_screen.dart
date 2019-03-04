import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/messege_screen.dart';

class CallInfoScreen extends StatefulWidget {
  final ChatModel chat;

  const CallInfoScreen({Key key, this.chat}) : super(key: key);
  @override
  _CallInfoScreenState createState() => _CallInfoScreenState();
}

class _CallInfoScreenState extends State<CallInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Info"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MessegeScreen(
                        chat: widget.chat,
                      )));
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Remove from call log"),
                ),
                PopupMenuItem(
                  child: Text("Block"),
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: SizedBox(
              height: 100,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    trailing: ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call),
                          color: Theme.of(context).primaryColor,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.videocam),
                            color: Theme.of(context).primaryColor),
                      ],
                    ),
                    title: Text(
                      widget.chat.name,
                      style: Theme.of(context).textTheme.title,
                    ),
                    leading: Container(
                      height: 55,
                      width: 55,
                      // child: Image.network(dummyData[i].avatarUrl),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        image: DecorationImage(
                            image: NetworkImage(widget.chat.avatarUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 180,
              padding: EdgeInsets.all(8),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15.0, left: 10, bottom: 5),
                      child: Text(
                        "Today",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      trailing: Text("Unavailable"),
                      leading: Icon(
                        Icons.call_made,
                        color: Colors.green,
                      ),
                      title: Text("Outgoing"),
                      subtitle: Text(widget.chat.time),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
