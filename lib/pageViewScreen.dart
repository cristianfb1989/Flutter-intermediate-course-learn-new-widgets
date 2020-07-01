import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  Widget buildPage(String text, Color color) {
    return Center(
        child: Text(text, style: TextStyle(fontSize: 80, color: color)));
  }

  Widget buildPageView() {
    return PageView(
      children: <Widget>[
        buildPage("Hola", Colors.red),
        buildPage("Desde", Colors.green),
        buildPage("PageView", Colors.blue),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page View Example"),
        ),
        body: buildPageView());
  }
}
