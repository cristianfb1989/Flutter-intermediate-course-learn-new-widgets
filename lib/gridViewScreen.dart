import 'package:flutter/material.dart';

class GridViewExample extends StatefulWidget {
  @override
  _GridViewExampleState createState() => _GridViewExampleState();
}

class _GridViewExampleState extends State<GridViewExample> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(color: Colors.red, child: Text("1")),
          Container(color: Colors.blue, child: Text("2")),
          Container(color: Colors.green, child: Text("3")),
          Container(color: Colors.red, child: Text("4")),
          Container(color: Colors.blue, child: Text("5")),
          Container(color: Colors.green, child: Text("6")),
        ],
      ),
    );
  }
}
