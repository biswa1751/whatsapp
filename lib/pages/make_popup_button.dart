import 'package:flutter/material.dart';

class MakePopupButton extends StatefulWidget {
  final int index;

  const MakePopupButton({Key key, this.index}) : super(key: key);
  @override
  _MakePopupButtonState createState() => _MakePopupButtonState();
}

class _MakePopupButtonState extends State<MakePopupButton> {
  List<List<PopupMenuItem>> _list = [
    [
      PopupMenuItem(
        child: Text("New group"),
      ),
      PopupMenuItem(
        child: Text("New brodcast"),
      ),
      PopupMenuItem(
        child: Text("WhatsApp Web"),
      ),
      PopupMenuItem(
        child: Text("Starred messages"),
      ),
       PopupMenuItem(
        child: Text("Settings"),
      )
    ],
    [
       PopupMenuItem(
        child: Text("Status Privacy"),
      ),
      PopupMenuItem(
        child: Text("Settings"),
      )
    ],
    [
       PopupMenuItem(
        child: Text("Clear call log"),
      ),
      PopupMenuItem(
        child: Text("Settings"),
      )
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => _list[widget.index - 1],
      child: Icon(Icons.more_vert),
    );
  }
}
