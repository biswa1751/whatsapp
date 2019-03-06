import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/call_screen_pages/call_info_screen.dart';
import 'package:whatsapp/pages/select_contact_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, int i) {
          return Column(
            children: <Widget>[
             
              new ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CallInfoScreen(
                              chat: dummyData[i],
                            )));
                  },
                  trailing: Icon(
                    Icons.call,
                    color:  Color(0xff128C7E),
                  ),
                  leading: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        image: DecorationImage(
                            image: NetworkImage(dummyData[i].avatarUrl),
                            fit: BoxFit.cover)),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      i % 2 == 0
                          ? Icon(
                              Icons.call_made,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.call_received,
                              color: Colors.red,
                            ),
                      Text(
                        "Yesterday," + dummyData[i].time,
                        style: Theme.of(context).textTheme.body1,
                      ),
                    ],
                  )),
                   new Divider(
                height: 10.0,
                indent: 90,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SelectContactScreen(
                    callScreen: true,
                  )));
        },
        child: Icon(
          MdiIcons.phonePlus,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}
