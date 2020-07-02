import 'package:curso_udemy/util/responsive.dart';
import 'package:flutter/material.dart';

class SilverAppBarScreen extends StatefulWidget {
  @override
  _SilverAppBarScreenState createState() => _SilverAppBarScreenState();
}

class _SilverAppBarScreenState extends State<SilverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
          expandedHeight: responsive.hp(20),
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(title: Text("Slivers"))),
      SliverList(delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
            padding: EdgeInsets.all(responsive.ip(1.6)),
            child: Card(
                child: Text('$index',
                    style: TextStyle(fontSize: responsive.ip(3.2)))));
      }))
    ]));
  }
}
