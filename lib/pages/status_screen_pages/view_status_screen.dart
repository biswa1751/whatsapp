import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ViewStatus extends StatefulWidget {
  final ChatModel chat;

  const ViewStatus({Key key, this.chat}) : super(key: key);
  @override
  _ViewStatusState createState() => _ViewStatusState();
}

class _ViewStatusState extends State<ViewStatus>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(seconds: 4, milliseconds: 500))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.pop(context);
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(widget.chat.avatarUrl))),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 16,
                          fillColor: Colors.grey[600],
                          lineHeight: 2,
                          percent: _controller.value,
                          progressColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 0),
                        );
                      },
                    )),
                ListTile(
                  title: Text(
                    widget.chat.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(widget.chat.time,
                      style: TextStyle(color: Colors.white)),
                  leading: Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(widget.chat.avatarUrl),
                        )
                      ],
                    ),
                  ),
                  trailing: PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    onSelected: (val) {
                      print("Value :$val");
                    },
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<String>(
                          child: Text("Mute"),
                          value: "Mute",
                        ),
                      ];
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 20,
              left: MediaQuery.of(context).size.width/2-20,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_up,color: Colors.white,),
                   Text("REPLY",style: TextStyle(color: Colors.white),),
                ],
              )
            )
          ],
        ),
        );
  }
}
