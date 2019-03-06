import 'package:flutter/material.dart';

class ChatsSettingsScreen extends StatefulWidget {
  @override
  _ChatsSettingsScreenState createState() => _ChatsSettingsScreenState();
}

class _ChatsSettingsScreenState extends State<ChatsSettingsScreen> {
  bool _value2 = true;
  bool _value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Card(
              margin: EdgeInsets.only(left: 0, top: 0, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text("App Language"),
                    subtitle: Text("Phone's Language (English)"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
                    child: Text(
                      "Chat settings",
                      style: TextStyle(
                          color: Color(0xff128C7E),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _value1 = !_value1;
                      });
                    },
                    title: Text("Enter is send"),
                    subtitle: _value1
                        ? Text("Enter key will send your messege")
                        : Text("Enter key will add new line"),
                    trailing: Checkbox(
                      value: _value1,
                      onChanged: (v) {
                        setState(() {
                          _value1 = v;
                        });
                      },
                      activeColor: Color(0xff128C7E),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Font Size :Medium"),
                    subtitle: Text("Font size for chat screen"),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                              titlePadding: EdgeInsets.only(top: 20, left: 20),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              content: Container(
                                height: 220,
                                width: 230,
                                padding: EdgeInsets.all(0),
                                margin: EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ListTile(
                                      onTap: () {},
                                      title: Text(
                                        "Small",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    ListTile(
                                      onTap: () {},
                                      title: Text("Medium"),
                                    ),
                                    ListTile(
                                      onTap: () {},
                                      title: Text(
                                        "Large",
                                        style: TextStyle(fontSize: 22),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        FlatButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("CANCEL",style: TextStyle(
                                            color:  Color(0xff128C7E)
                                          ),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              title: Text("Font size")));
                    },
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    title: Text("Walpaper"),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    title: Text("Chat backup"),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    title: Text("Chat history"),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Card(
              margin: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      "Media visibility",
                      style: TextStyle(
                          color: Color(0xff128C7E),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        _value2 = !_value2;
                      });
                    },
                    title: Text("Show media in gallery"),
                    subtitle: Text(
                        "Show newly downloaded media in your phones's gallery"),
                    trailing: Checkbox(
                      value: _value2,
                      onChanged: (v) {
                        setState(() {
                          _value2 = v;
                        });
                      },
                      activeColor: Color(0xff128C7E),
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
