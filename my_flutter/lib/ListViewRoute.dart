import 'dart:async';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewRoute"),
      ),
      body: MyListView(),
    );
  }

}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  static const loadingTag  = "##loading##";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  Widget divider1 = Divider(color: Colors.blue);
  Widget divider2 = Divider(color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(title: Text("商品列表")),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              if (_words[index] == loadingTag) {
                if (_words.length -1 <100) {
                  _retrieveData();
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: CircularProgressIndicator(strokeWidth: 2.0),
                    ),
                  );
                } else {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Text("没有更多了", style: TextStyle(color: Colors.grey),),
                  );
                }
              }
              return ListTile(title: Text(_words[index]));
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: .0);
            },
            itemCount: _words.length,
          ),
        )
      ],
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
        _words.length -1,
          generateWordPairs().take(20).map((e)=> e.asPascalCase).toList()
      );
      setState(() {

      });
    });
  }
}