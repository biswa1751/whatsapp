import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: "profile_photo",
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(30),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(dummyData[0].avatarUrl)),
                      shape: BoxShape.circle),
                ),
              ),
              Positioned(
                bottom: 25,
                right: 40,
                child: CircleAvatar(
                  minRadius: 27,
                  backgroundColor: Color(0xff128C7E),
                  child: IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          Card(
            margin: EdgeInsets.only(left: 0, right: 0),
            child: Container(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Biswajit",
                    style: TextStyle(fontSize: 22),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.create,
                      color: Color(0xff128C7E),
                      size: 20,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text(
              "This is not your username or pin. This name will be visible to\nyour WhatsApp contacts",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 0, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Text(
                    "About and phone number",
                    style: TextStyle(color: Color(0xff128C7E), fontSize: 16),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Busy",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "+91 1223423424",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
