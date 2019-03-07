import 'package:flutter/material.dart';
import 'package:whatsapp/models/all_colors.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallingScreen extends StatefulWidget {
  @override
  _CallingScreenState createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: <Widget>[SizedBox(width: 50,),Icon(FontAwesomeIcons.whatsapp),Text(
          ' WHATSAPP VOICE CALL',
          style: TextStyle(fontSize: 15),
        ),],),
        centerTitle: true,
        leading:IconButton(
          icon: Icon(Icons.keyboard_arrow_down,size: 30,),
          onPressed:()=> Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          Text("Sohit",style: TextStyle(
            color: Colors.white,
            fontSize: 28
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("RINGING",style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),),
          ),
          Stack(
            children: <Widget>[
              Container(
            width: double.infinity,
            height: 470,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(dummyData[0].avatarUrl)
              )
            ),
          ),
          Positioned(
            bottom: 30,
            left: 180,
            child: FloatingActionButton(
              heroTag: "calling",
              child: Icon(
                Icons.call_end,
                color: Colors.white,
              ),
              backgroundColor: Colors.red,
              onPressed: ()=>Navigator.pop(context),
            ),
          )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.volume_up,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.mic_off,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
