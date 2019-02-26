import 'package:flutter/material.dart';

class ButtonRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text("This is new route"),
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () => {},
          ),
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () => {},
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => {},
          ),
          RaisedButton(
            elevation: 2.0,
            highlightElevation: 8.0,
            disabledElevation: 0.0,
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () => {},
          ),
          Image(
            image: AssetImage("images/lake.jpg"),
            width: 100.0,
          ),
          Image(
            image: NetworkImage(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            width: 100.0,
          )
        ],
      )),
    );
  }
}
