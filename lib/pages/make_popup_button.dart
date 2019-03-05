import 'package:flutter/material.dart';
import 'package:whatsapp/pages/select_contact_screen.dart';
import 'package:whatsapp/pages/settings_screen.dart';

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
        int val=widget.index-1;
        return _list[val];
      },
      onSelected: (val) {
        print("object :$val");
        if(val.toString()=="Settings")
        {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>SettingsScreen()
          ));
        }
        else if(val.toString()=="New group"|| val.toString()=="New broadcast")
        {
           Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>SelectContactScreen(
              callScreen: false,
            )
          ));
        }
      },
      onCanceled: () {
        print("Cancelled");
      },
    );
  }
}
