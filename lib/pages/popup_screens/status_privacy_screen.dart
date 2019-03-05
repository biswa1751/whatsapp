import 'package:flutter/material.dart';

class StatusPrivacyScreen extends StatefulWidget {
  @override
  _StatusPrivacyScreenState createState() => _StatusPrivacyScreenState();
}

class _StatusPrivacyScreenState extends State<StatusPrivacyScreen> {
  int groupValue = 1;
  onPress(int i) {
    setState(() {
      groupValue = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Status privacy"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Who can see your status updates",
              style: TextStyle(color: Colors.teal[400], fontSize: 18),
            ),
            Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: groupValue,
                onChanged: onPress,
              ),
              Text(
                "My contacts",
                style: Theme.of(context).textTheme.subhead,
              ),
            ]),
            Divider(
              height: 5,
            ),
            Row(children: <Widget>[
              Radio(
                value: 2,
                groupValue: groupValue,
                onChanged: onPress,
              ),
              Text(
                "My contacts except...",
                style: Theme.of(context).textTheme.subhead,
              ),
            ]),
            Divider(height: 5,),
            Row(children: <Widget>[
              Radio(
                value: 3,
                groupValue: groupValue,
                onChanged: onPress,
              ),
              Text(
                "Only share with...",
                style: Theme.of(context).textTheme.subhead,
              ),
            ]),
            Text(
              "Changes to your privacy settings won't affect status updates that you've sent already",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
