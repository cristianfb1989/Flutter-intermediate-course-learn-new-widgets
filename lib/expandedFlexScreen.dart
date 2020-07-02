import 'package:curso_udemy/util/responsive.dart';
import 'package:flutter/material.dart';

class ExpandedFinal extends StatefulWidget {
  @override
  _ExpandedFinalState createState() => _ExpandedFinalState();
}

class _ExpandedFinalState extends State<ExpandedFinal> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Expanded & Flex"),
        ),
        body: Column(children: <Widget>[
          Row(textDirection: TextDirection.ltr, children: <Widget>[
            Expanded(
                flex: 1,
                child:
                    Container(height: responsive.hp(20), color: Colors.green)),
            Expanded(
                flex: 9,
                child: Container(height: responsive.hp(20), color: Colors.blue))
          ]),
          Row(textDirection: TextDirection.ltr, children: <Widget>[
            Expanded(
                flex: 3,
                child: Container(height: responsive.hp(10), color: Colors.red)),
            Expanded(
                flex: 7,
                child:
                    Container(height: responsive.hp(10), color: Colors.yellow))
          ])
        ]));
  }
}
