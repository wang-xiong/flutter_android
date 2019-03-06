import 'package:flutter/material.dart';

class ScrollControllerRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ScrollControllerRouteState();
  }

}

class _ScrollControllerRouteState extends State<ScrollControllerRoute> {
  ScrollController _controller = new ScrollController();
  bool showTpTopBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener((){
      print(_controller.offset);
      if(_controller.offset < 1000 && showTpTopBtn) {
        setState(() {
          showTpTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showTpTopBtn == false) {
        setState(() {
          showTpTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("滚动控制")),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: 100,
              itemExtent: 50.0,
              controller: _controller,
              itemBuilder: (context, index) {
                return ListTile(title: Text("$index"));
              }
          )
      ),
      floatingActionButton: !showTpTopBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _controller.animateTo(.0, duration: Duration(microseconds: 200), curve: Curves.ease);
        },
      ),
    );
  }
}