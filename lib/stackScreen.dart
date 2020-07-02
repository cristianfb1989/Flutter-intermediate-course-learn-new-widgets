import 'package:curso_udemy/util/responsive.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
              width: responsive.wp(30),
              height: responsive.hp(30),
              color: Colors.green),
          Image(
              width: responsive.wp(20),
              height: responsive.hp(20),
              image: AssetImage("images/bongocat.png"))
        ],
      ),
    );
  }
}
