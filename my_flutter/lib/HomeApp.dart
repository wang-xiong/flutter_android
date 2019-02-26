import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:my_flutter/ButtonRoute.dart';
import 'package:my_flutter/FlexLayoutTestRoute.dart';
import 'package:my_flutter/LoginRoute.dart';
import 'package:my_flutter/StackRoute.dart';
import 'package:my_flutter/TextRoute.dart';
import 'package:my_flutter/WrapFlowRoute.dart';

class HomeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //应用名称
      theme: ThemeData(
        primarySwatch: Colors.blue, //蓝色主题
      ),
      routes: {
        //注册路由表
        "button_page": (context) => new ButtonRoute(),
        "login_page": (context) => new LoginRoute(),
        "text_page": (context) => new TextRoute(),
        "flex_page": (context) => new FlexLayoutTestRoute(),
        "wrap_flow_page": (context) => new WrapFlowRoute(),
        "stack_page": (context) => new StackRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'), //应用首页路由
    );
  }
}

//StatefulWidget有状态的Widget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('open button route'),
              textColor: Colors.blue,
              onPressed: () {
                //1.通过路由名打开新的路由页，前提是要注册路由表
                Navigator.pushNamed(context, "button_page");
                //2.直接构建对象打开新的路由页
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                  return new NewRoute();
//                }));
              },
            ),
            FlatButton(
              child: Text('open login route'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "login_page");
              },
            ),
            RaisedButton(
              child: Text("open text page"),
              textColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "text_page");
              },
            ),
            RaisedButton(
              child: Text("open flex page"),
              textColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "flex_page");
              },
            ),
            RaisedButton(
              child: Text("open wrap_flow_page"),
              textColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "wrap_flow_page");
              },
            ),
            RaisedButton(
              child: Text("open stack_page"),
              textColor: Colors.green,
              onPressed: () {
                Navigator.pushNamed(context, "stack_page");
              },
            ),
            RandomWordsWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}
