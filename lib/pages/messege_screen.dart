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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(widget.chat.avatarUrl),
            ),
            Text(widget.chat.name)
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
            color: Colors.white,
          ),
          PopupMenuButton(
            onSelected: (val){
              print("Value :$val");
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem<String>(
                  child: Text("View contact"),
                  value: "View contact",
                ),
                PopupMenuItem<String>(
                  child: Text("Media"),
                  value: "Media",
                ),
                PopupMenuItem<String>(
                  child: Text("Search"),
                  value: "Search",
                ),
                PopupMenuItem<String>(
                  child: Text("Mute notifications"),
                  value: "Mute notifications",
                ),
                PopupMenuItem<String>(
                  child: Text("Walpaper"),
                  value: "Walpaper",
                ),
                PopupMenuItem<String>(
                  value: "More",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text("More"), Icon(Icons.play_arrow,size: 20,color: Colors.grey,)],
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.chat.avatarUrl), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(left: 15, top: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text("How are You?",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Container(
                  width: 370,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 1, bottom: 1),
                      hintText: "Type a message",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: IconButton(
                        icon:
                            Icon(Icons.insert_emoticon, color: Colors.blueGrey),
                        onPressed: () {},
                      ),
                      suffixIcon: Container(
                        width: 100,
                        padding: EdgeInsets.only(right: 3, left: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Transform.rotate(
                                  angle: -10.2,
                                  child: Icon(Icons.attach_file,
                                      color: Colors.blueGrey)),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.blueGrey,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 9,
            )
          ],
        ),
      ),
    );
  }
}
