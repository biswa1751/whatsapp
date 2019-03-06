import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp/pages/popup_screens/settings_pages/account_screen.dart';
import 'package:whatsapp/pages/popup_screens/settings_pages/help_screen.dart';
import 'package:whatsapp/pages/popup_screens/settings_pages/profile_page.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> _list = List<String>();
  List<IconData> _icon = List<IconData>();
  List<Widget> _navigatorScreen = List<Widget>();
  @override
  void initState() {
    super.initState();
    _list = [
      "Account",
      "Chats",
      "Notifications",
      "Data and storage usage",
      "Invite a friend",
      "Help"
    ];
    _icon = [
      MdiIcons.keyVariant,
      Icons.message,
      Icons.notifications,
      Icons.donut_large,
      Icons.group,
      Icons.help
    ];
    _navigatorScreen = [
      AccountScreen(),
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
      FlutterLogo(),
      HelpScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView.builder(
        itemCount: _list.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: <Widget>[
                Container(
                  height: 100,
                  padding: EdgeInsets.only(top: 20),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage()));
                    },
                    title: Text(
                      "Biswajit",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    subtitle: Text("Busy",
                        style: Theme.of(context).textTheme.subhead),
                    leading: Hero(
                      tag: "profile_photo",
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            image: DecorationImage(
                                image: NetworkImage(dummyData[index].avatarUrl),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ),
                Divider()
              ],
            );
          }
          return Column(children: <Widget>[
            ListTile(
              title: Text(_list[index - 1]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => _navigatorScreen[index - 1]));
              },
              leading: (index != 1)
                  ? Icon(_icon[index - 1], color: Color(0xff128C7E))
                  : Transform.rotate(
                      angle: pi / 4,
                      child: Icon(_icon[index - 1], color: Color(0xff128C7E)),
                    ),
            ),
            Divider(
              indent: 70,
            ),
          ]);
        },
      ),
    );
  }
}
