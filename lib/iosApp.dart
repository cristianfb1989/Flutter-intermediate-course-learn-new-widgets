import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IOSScreenExample extends StatefulWidget {
  @override
  _IOSScreenExampleState createState() => _IOSScreenExampleState();
}

class _IOSScreenExampleState extends State<IOSScreenExample> {
  Widget androidLayout() {
    return RaisedButton(
        color: Colors.green, child: Text("Android"), onPressed: () {});
  }

  Widget iosLayout() {
    return CupertinoButton(
        color: Colors.red, child: Text("IOS"), onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IOS & Android"),
      ),
      body: Theme.of(context).platform == TargetPlatform.android
          ? androidLayout()
          : iosLayout(),
    );
  }
}
