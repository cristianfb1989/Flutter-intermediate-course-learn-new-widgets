import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedPreferencesScreen extends StatefulWidget {
  @override
  _SharedPreferencesScreenState createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  String input, username;

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  Future<Null> storeInput(String input) async {
    await SharedPreferences.getInstance().then((prefs) {
      setState(() {
        prefs.setString("nombreUsuario", input);
      });
    });
  }

  Future<Null> getSharedPrefs() async {
    await SharedPreferences.getInstance().then((prefs) {
      setState(() {
        username = prefs.get("nombreUsuario");
        username = input;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(username == null ? "Sin nombre" : username)),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String value) {
              input = value;
            },
          ),
          RaisedButton(
              child: Text("Guardar Nombre de Usuario"),
              onPressed: () {
                setState(() {
                  storeInput(input);
                });
              })
        ],
      ),
    );
  }
}
