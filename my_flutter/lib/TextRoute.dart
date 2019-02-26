import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget textSection = Container(
      padding: const EdgeInsets.all(15.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text('默认的Text'),
          Text(
            'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
            textAlign: TextAlign.center, // 文本对齐方式
          ),
          Text(
            'Flutter allows you to build beautiful native apps on iOS and Android from a single codebase.',
            softWrap: false, // true时会自动换行处理；false时会判定为有无限的水平空间，不会换行
          ),
          RichText(
            text: TextSpan(
              text: 'Flutter',
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' allows you',
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
                TextSpan(
                    text: ' to build beautiful native apps',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                TextSpan(
                    text: ' on iOS and Android',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: ' from a single codebase.',
                    style: TextStyle(
                      shadows: [
                        Shadow(color: Colors.black38, offset: Offset(3, 3))
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );

    // TODO: implement build
    return new MaterialApp(
        title: 'Flutter UI basic 1',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Text'),
          ),
          body: textSection,
        ));
  }
}
