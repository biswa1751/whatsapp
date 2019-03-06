import 'package:flutter/material.dart';

class TypeStatusScreen extends StatefulWidget {
  @override
  _TypeStatusScreenState createState() => _TypeStatusScreenState();
}

class _TypeStatusScreenState extends State<TypeStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: <Widget>[
          Flexible(
            child: Center(
                child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(fontSize: 40, color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Type a status",
                  hintStyle: Theme.of(context).textTheme.display1,
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            )),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.insert_emoticon),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.title),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.palette),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  minRadius: 28,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
