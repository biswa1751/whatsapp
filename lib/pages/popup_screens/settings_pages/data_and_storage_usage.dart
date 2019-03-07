import 'package:flutter/material.dart';

class Usage extends StatefulWidget {
  @override
  _UsageState createState() => _UsageState();
}

class _UsageState extends State<Usage> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data and storage usage")
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                ListTile(title: Text("Network usage"),),
                Divider(height: 0,),
                ListTile(title: Text("Storage usage"),)
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
                    child: Text(
                      "Media auto-download",
                      style: TextStyle(
                          color: Color(0xff128C7E),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ListTile(title: Text("When using mobile data"),subtitle: Text("Photos"),),
                Divider(height: 0,),
                ListTile(title: Text("When connected on WI-FI"),subtitle: Text("All media"),),
                 Divider(height: 0,),
                ListTile(title: Text("When roaming"),subtitle: Text("nomedia"),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 10),
            child: Text("NOTE: Voice messages are always automatically downloaded for the best communication experience",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey
            ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
                    child: Text(
                      "Call settings",
                      style: TextStyle(
                          color: Color(0xff128C7E),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ListTile(title: Text("Low data usage"),
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
                subtitle: Text("Lower the amount of data used during a WhatsApp call when using mobile data"),),
                Divider(height: 25,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}