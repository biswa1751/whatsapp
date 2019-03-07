import 'package:flutter/material.dart';
import 'package:whatsapp/pages/popup_screens/settings_pages/settings_screen.dart';
import 'package:whatsapp/pages/popup_screens/starred_messages.dart';
import 'package:whatsapp/pages/popup_screens/status_privacy_screen.dart';
import 'package:whatsapp/pages/select_contact_screen.dart';

class MakePopupButton extends StatefulWidget {
  final int index;

  const MakePopupButton({Key key, this.index}) : super(key: key);
  @override
  _MakePopupButtonState createState() => _MakePopupButtonState();
}

class _MakePopupButtonState extends State<MakePopupButton> {
  List<List<PopupMenuItem<String>>> _list = [
    [
      PopupMenuItem<String>(
        child: Text("New group"),
        value: "New group",
      ),
      PopupMenuItem<String>(
        child: Text("New broadcast"),
        value: "New brodcast",
      ),
      PopupMenuItem<String>(
        child: Text("WhatsApp Web"),
        value: "WhatsApp Web",
      ),
      PopupMenuItem<String>(
        child: Text("Starred messages"),
        value: "Starred messages",
      ),
      PopupMenuItem<String>(
        child: Text("Settings"),
        value: "Settings",
      )
    ],
    [
      PopupMenuItem<String>(
        child: Text("Status Privacy"),
        value: "Status Privacy",
      ),
      PopupMenuItem<String>(
        child: Text("Settings"),
        value: "Settings",
      )
    ],
    [
      PopupMenuItem<String>(
        child: Text("Clear call log"),
        value: "Clear call log",
      ),
      PopupMenuItem<String>(
        child: Text("Settings"),
        value: "Settings",
      )
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        int val = widget.index - 1;
        return _list[val];
      },
      onSelected: (val) {
        if (val.toString() == "Settings") {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
        } else if (val.toString() == "New group" ||
            val.toString() == "New broadcast") {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SelectContactScreen(
                    callScreen: false,
                  )));
        } else if (val.toString() == "Clear call log") {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Do you want to clear your entire call log?"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("CANCEL"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FlatButton(
                        child: Text("OK"),
                        onPressed: () {},
                      ),
                    ],
                  ));
        } else if (val.toString() == "Status Privacy") {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => StatusPrivacyScreen()));
        }else if(val.toString()=="Starred messages"){
           Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>StarredMessages()));
        }
        else{
           Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>Scaffold(
                appBar: AppBar(title: Text(val.toString()),),
              )));
        }
      },
      onCanceled: () {
        print("Cancelled");
      },
    );
  }
}
