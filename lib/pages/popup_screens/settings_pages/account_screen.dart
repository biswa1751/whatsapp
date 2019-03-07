import 'package:flutter/material.dart';
class AccountScreen extends StatelessWidget {
 final List<String> _listAcoountScreen = [
    "Privacy",
    "Security",
    "Two-step verification",
    "Change number",
    "Request account info",
    "Delete my account"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
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
                onTap: (){
                  print("fsf");
                },
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
