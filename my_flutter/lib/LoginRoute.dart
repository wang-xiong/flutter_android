import 'package:flutter/material.dart';

class LoginRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _unameController = new TextEditingController();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login test"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              onChanged: (v) {
                print("onchange:$v");
              },
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
              controller: _unameController,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "你登录的密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}