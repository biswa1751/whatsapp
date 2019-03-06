import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/status_screen_pages/type_status_screen.dart';
import 'package:camera/camera.dart';

class StatusScreen extends StatelessWidget {
  final List<CameraDescription> cameras;
  StatusScreen(this.cameras);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyData.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Column(
              children: <Widget>[
                ListTile( 
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>CameraScreen(
              cameras: cameras,
            )
          ));
                  },
                  leading: Stack(
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 55,
                       // child: Image.network(dummyData[i].avatarUrl),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          image: DecorationImage(
                            image: NetworkImage(dummyData[i].avatarUrl),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Tap to add status update"),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 8),
                  child: Text(
                    "Viewed Updates",
                    style: TextStyle(fontSize: 15),
                  ),
                  color: Colors.grey[200],
                )
              ],
            );
          }
          i = i - 1;
          return Column(
            children: <Widget>[
              new ListTile(
                  leading:  Container(
                        height: 55,
                        width: 55,
                       // child: Image.network(dummyData[i].avatarUrl),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          image: DecorationImage(
                            image: NetworkImage(dummyData[i].avatarUrl),
                            fit: BoxFit.cover
                          )
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "f1",
          mini: true,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>TypeStatusScreen(
            )
          ));
        },
        child: Icon(
          Icons.create,
          color: Colors.grey[800],
        ),
        backgroundColor: Colors.green[50],
      ),
      SizedBox(
        height: 15,
      ),
      FloatingActionButton(
        heroTag: "f2",
        onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>CameraScreen(
              cameras: cameras,
            )
          ));
        },
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
        ],
      )
    );
  }
}
