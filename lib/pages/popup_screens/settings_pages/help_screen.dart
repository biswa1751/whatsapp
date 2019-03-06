import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  final List<String> _listAcoountScreen = [
    "FAQ",
    "Contact us",
    "Terms and Privacy Policy",
    "App info",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: _listAcoountScreen.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(_listAcoountScreen[index]),
                subtitle: index == 1 ? Text("Questions? Need help?") : null,
              ),
              Divider(
                height: 0,
              )
            ],
          );
        },
      ),
    );
  }
}
