import 'package:flutter/material.dart';
import 'package:my_flutter/ButtonRoute.dart';
import 'package:my_flutter/ContainerRoute.dart';
import 'package:my_flutter/DefaultRoute.dart';
import 'package:my_flutter/FlexLayoutTestRoute.dart';
import 'package:my_flutter/ListViewRoute.dart';
import 'package:my_flutter/LoginRoute.dart';
import 'package:my_flutter/ScaffoldRoute.dart';
import 'package:my_flutter/SingleChildScrollViewTestRoute.dart';
import 'package:my_flutter/StackRoute.dart';
import 'package:my_flutter/TextRoute.dart';
import 'package:my_flutter/WrapFlowRoute.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //应用名称
      theme: ThemeData(
        primarySwatch: Colors.blue, //蓝色主题
      ),
      routes: {
        //注册路由表
        "DefaultRoute" :(context)=> new DefaultRoute(),
        "ButtonRoute": (context) => new ButtonRoute(),
        "LoginRoute": (context) => new LoginRoute(),
        "TextRoute": (context) => new TextRoute(),
        "FlexLayoutTestRoute": (context) => new FlexLayoutTestRoute(),
        "WrapFlowRoute": (context) => new WrapFlowRoute(),
        "StackRoute": (context) => new StackRoute(),
        "ContainerRoute": (context) => new ContainerRoute(),
        "ScaffoldRoute": (context) => new ScaffoldRoute(),
        "SingleChildScrollViewTestRoute": (context) => new SingleChildScrollViewTestRoute(),
        "ListViewRoute": (context) => new ListViewRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'), //应用首页路由
    );
  }
}

//StatefulWidget有状态的Widget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('open DefaultRoute'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, "DefaultRoute");
                },
              ),
              RaisedButton(
                child: Text('open ButtonRoute'),
                textColor: Colors.blue,
                onPressed: () {
                  //1.通过路由名打开新的路由页，前提是要注册路由表
                  Navigator.pushNamed(context, "ButtonRoute");
                  //2.直接构建对象打开新的路由页
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                  return new NewRoute();
//                }));
                },
              ),
              RaisedButton(
                child: Text('open LoginRoute'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, "LoginRoute");
                },
              ),
              RaisedButton(
                child: Text("open TextRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "TextRoute");
                },
              ),
              RaisedButton(
                child: Text("open FlexLayoutTestRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "FlexLayoutTestRoute");
                },
              ),
              RaisedButton(
                child: Text("open WrapFlowRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "WrapFlowRoute");
                },
              ),
              RaisedButton(
                child: Text("open StackRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "StackRoute");
                },
              ),
              RaisedButton(
                child: Text("open ContainerRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "ContainerRoute");
                },
              ),
              RaisedButton(
                child: Text("open ScaffoldRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(context, "ScaffoldRoute");
                },
              ),
              RaisedButton(
                child: Text("open SingleChildScrollViewTestRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(
                      context, "SingleChildScrollViewTestRoute");
                },
              ),
              RaisedButton(
                child: Text("open ListViewRoute"),
                textColor: Colors.green,
                onPressed: () {
                  Navigator.pushNamed(
                      context, "ListViewRoute");
                },
              ),
            ],
          ),
        ),
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
