import 'package:flutter/material.dart';

class NotificacionScreen extends StatefulWidget {
  @override
  _NotificacionScreenState createState() => _NotificacionScreenState();
}

class _NotificacionScreenState extends State<NotificacionScreen> {
  void showSnackBar() {
    final snackbar = SnackBar(
        content: Text("Esto es una Snack Bar"),
        action: SnackBarAction(label: "Ok", onPressed: () {}));
    Scaffold.of(context).showSnackBar(snackbar);
  }

  void showBottom() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 100,
            color: Colors.deepOrange,
            child: Center(
              child: Text("Bottom sheet Modal"),
            ),
          );
        });
  }

  Future<Null> showSimpleDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Un Simple Dialog"),
            content: Text("Mensaje del dialog"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Snackbar"),
                color: Colors.lightBlue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showSnackBar();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Modal bottom"),
                color: Colors.lightBlue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showBottom();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                child: Text("Simple Dialog"),
                color: Colors.lightBlue,
                textColor: Colors.white,
                splashColor: Colors.green,
                onPressed: () {
                  showSimpleDialog();
                }),
          )
        ],
      ),
    );
  }
}
