import 'package:curso_udemy/expandedFlexScreen.dart';
import 'package:curso_udemy/gridViewScreen.dart';
import 'package:curso_udemy/iOSScreen.dart';
import 'package:curso_udemy/jsonApp.dart';
import 'package:curso_udemy/notificacionScreen.dart';
import 'package:curso_udemy/pageViewScreen.dart';
import 'package:curso_udemy/sharedPreferencesScreen.dart';
import 'package:curso_udemy/silverAppBarScreen.dart';
import 'package:curso_udemy/stackScreen.dart';
import 'package:curso_udemy/util/responsive.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion con diferentes pantallas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (context) => MyHomePage(),
        '/expandedScreen': (context) => ExpandedFinal(),
        '/gridView': (context) => GridViewExample(),
        '/iOSScreen': (context) => IOSScreenExample(),
        '/jsonApp': (context) => JsonExample(),
        '/notificacionesScreen': (context) => NotificacionScreen(),
        '/pageViewScreen': (context) => PageViewExample(),
        '/sharedPref': (context) => SharedPreferencesScreen(),
        '/sliversApp': (context) => SilverAppBarScreen(),
        '/stackScreen': (context) => StackScreen(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion con diferentes pantallas"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con Expanded & Flex"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/expandedScreen');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con Grid View"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/gridView');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con widgets para iOS y Android"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/iOSScreen');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Ejemplo de utilizacion de JSON"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/jsonApp');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con formatos de notificaciones"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/notificacionesScreen');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Ejemplo de Page View"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/pageViewScreen');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Utilizacion de Shared Preferences"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/sharedPref');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con SliversAppBar"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/sliversApp');
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: MaterialButton(
                      child: Text("Pantalla con Stack"),
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      onPressed: () {
                        Navigator.pushNamed(context, '/stackScreen');
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
