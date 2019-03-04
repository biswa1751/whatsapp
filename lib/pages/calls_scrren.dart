
import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/select_contact_screen.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, int i) {
        return Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              trailing: Icon(Icons.call,color: Theme.of(context).primaryColor,),
             
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
                  new Text(dummyData[i].name,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
              subtitle: Row(
                children: <Widget>[
                  i%2==0?Icon(Icons.call_made,color: Colors.green,):Icon(Icons.call_received,color: Colors.red,),
                  Text("Yesterday,"+
                dummyData[i].time,
                style: Theme.of(context).textTheme.body1,
              ),
                ],
              )
            )
          ],
        );
      },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        
            Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>SelectContactScreen()
                ));
  
      },
      child: Icon(Icons.call,color: Colors.white,),
      backgroundColor: Theme.of(context).accentColor,
    ),
    );
  }
}