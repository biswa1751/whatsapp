import 'package:flutter/material.dart';

class NotificationsSettings extends StatefulWidget {
  @override
  _NotificationsSettingsState createState() => _NotificationsSettingsState();
}

class _NotificationsSettingsState extends State<NotificationsSettings> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Reset notification settings"),
                )
              ];
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10,),
          ListTile(
            title: Text("Conversation tones"),
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            trailing: Checkbox(
              value: _value,
              onChanged: (v) {
                setState(() {
                  _value = v;
                });
              },
              activeColor: Color(0xff128C7E),
            ),
            subtitle: Text(
                "Play sounds for incoming and outgoing\n messages."),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
            child: Text(
              "Message notifications",
              style: TextStyle(
                  color: Color(0xff128C7E), fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text("Notification tone"),
            subtitle: Text("Default (Pixie Dust)"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Default"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Popup notification"),
            subtitle: Text("No popup"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Lightt"),
            subtitle: Text("White"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Use high priority notifications"),
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            trailing: Checkbox(
              value: _value,
              onChanged: (v) {
                setState(() {
                  _value = v;
                });
              },
              activeColor: Color(0xff128C7E),
            ),
            subtitle: Text(
                "Show previews of notifications at the top of the screen"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
            child: Text(
              "Group notifications",
              style: TextStyle(
                  color: Color(0xff128C7E), fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text("Notification tone"),
            subtitle: Text("Default (Pixie Dust)"),
          ),
           ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Default"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Popup notification"),
            subtitle: Text("No popup"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Light"),
            subtitle: Text("White"),
          ),
         ListTile(
            title: Text("Use high priority notifications"),
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            trailing: Checkbox(
              value: _value,
              onChanged: (v) {
                setState(() {
                  _value = v;
                });
              },
              activeColor: Color(0xff128C7E),
            ),
            subtitle: Text(
                "Show previews of notifications at the top of the screen"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
            child: Text(
              "Call notifications",
              style: TextStyle(
                  color: Color(0xff128C7E), fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text("Ringtone"),
            subtitle: Text("Default (MI)"),
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            title: Text("Vibrate"),
            subtitle: Text("Default"),
          ),
        ],
      ),
    );
  }
}
