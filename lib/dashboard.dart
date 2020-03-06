import 'package:flutter/material.dart';
import 'eventDetails.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => new _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<String> events = ["Crack-a-Dome", "GSOC","Elicit'20","Techideate'20"];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: Image.asset('assets/images/app_icon.png', width: 20.0, height: 30.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue[100],
        title: new Text('EVENTOS',style: new TextStyle(color: Colors.red),),
      ),
      body: new Center(
        child: new Container(
            child: new ListView.builder(
                itemCount: events.length ,
                itemBuilder: (BuildContext context, int index) => buildCard(context, index))),
      ),
    );
  }

  Widget buildCard(BuildContext context, int index) {
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(events[index], style: new TextStyle(fontSize: 30.0),),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
                child: Row(children: <Widget>[
                  Text(
                      "First Line"),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text("Second line", style: new TextStyle(fontSize: 35.0),),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
