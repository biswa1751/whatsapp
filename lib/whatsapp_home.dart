import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen_pages/calls_scrren.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/make_popup_button.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/pages/status_screen_pages/status_screen.dart';

class MyHomePage extends StatefulWidget {
  final List<CameraDescription> cameras;

  const MyHomePage({Key key, this.cameras}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      setState(() {});
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return 
    Scaffold(
      appBar: _tabController.index==0?null:AppBar(
        title: new Text('WhatsApp'),
        bottom: new TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,

          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 13.0, left: 0),
              child: Container(
                width: 10,
                height: 40,
                child: Center(
                    child: Icon(Icons.camera_alt,
                        size: 25, color: new Color(0xff80cbc4))),
              ),
            ),
            Container(width: deviceWidth / 4.75, child: new Tab(text: "CHATS")),
            Container(
                width: deviceWidth / 4.75, child: new Tab(text: "STATUS")),
            Container(width: deviceWidth / 4.75, child: new Tab(text: "CALLS")),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
          ),
          MakePopupButton(
            index: _tabController.index,
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(
            cameras: widget.cameras,
          ),
          new ChatScreen(),
          new StatusScreen(widget.cameras),
          new CallsScreen(),
        ],
      ),
    );
  }
}
