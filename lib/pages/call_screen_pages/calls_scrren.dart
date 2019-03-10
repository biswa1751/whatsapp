import 'package:flutter/material.dart';
import 'package:whatsapp/models/all_colors.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/call_screen_pages/call_info_screen.dart';
import 'package:whatsapp/pages/call_screen_pages/calling_screen.dart';
import 'package:whatsapp/helper/select_contact_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context,i) {
          return Column(
            children: <Widget>[
              new ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CallInfoScreen(
                              chat: dummyData[i],
                            ),
                      ),
                    );
                  },
                  trailing: IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Color(0xff128C7E),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CallingScreen(),
                        ),
                      );
                    },
                  ),
                  leading: InkWell(
                    onTap: () {
                      print("object");
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              content: Container(
                                height: 300,
                                width: 300,
                                child: Column(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 250,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      dummyData[0].avatarUrl))),
                                        ),
                                        Positioned(
                                          top: 0,
                                          child: Opacity(
                                            opacity: 0.4,
                                            child: Container(
                                              width: 300,
                                              height: 40,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 7.5,
                                          left: 15.5,
                                          child: Text(
                                            "Biswajit",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(
                                            Icons.message,
                                            color: secondPrimaryColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.call,
                                            color: secondPrimaryColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.videocam,
                                            color: secondPrimaryColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.info_outline,
                                            color: secondPrimaryColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          image: DecorationImage(
                              image: NetworkImage(dummyData[i].avatarUrl),
                              fit: BoxFit.cover)),
                    ),
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
