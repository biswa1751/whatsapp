import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> _list = List<String>();
  List<IconData> _icon = List<IconData>();
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
    _icon=[
      Icons.vpn_key,
      Icons.message,
      Icons.notifications,
      Icons.donut_large,
      Icons.group,
      Icons.help
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView.builder(
        itemCount: _list.length+1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              children: <Widget>[
                Container(
              height: 100,
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text("Biswajit",style: Theme.of(context).textTheme.headline,),
                subtitle: Text("Busy",style: Theme.of(context).textTheme.subhead),
                leading: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: NetworkImage(dummyData[index].avatarUrl),
                          fit: BoxFit.cover)),
                ),
              ),
            ),Divider()
              ],
            );
          }
          return Column(children: <Widget>[
          
            ListTile(
              title: Text(_list[index-1]),
              leading: Icon(_icon[index-1],color: Colors.teal[400],),
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
