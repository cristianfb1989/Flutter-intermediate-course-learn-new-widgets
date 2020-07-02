import 'package:curso_udemy/util/responsive.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:curso_udemy/post.dart';

class JsonExample extends StatefulWidget {
  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {
  Future<List<Post>> showPosts() async {
    var data = await http.get("https://jsonplaceholder.typicode.com/posts");
    var dataDecoded = json.decode(data.body);
    List<Post> posts = List();
    dataDecoded.forEach((post) {
      String title = post["title"];
      if (title.length > 25) {
        title = post["title"].substring(1, 25) + "...";
      }
      String body = post["body"].replaceAll(RegExp(r'\n'), " ");
      posts.add(Post(title, body));
    });

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Json"),
        ),
        body: Padding(
            padding: EdgeInsets.all(responsive.ip(1.6)),
            child: FutureBuilder(
                future: showPosts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: Padding(
                                  padding: EdgeInsets.all(responsive.ip(0.8)),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        Text(snapshot.data[index].title,
                                            style: TextStyle(
                                                fontSize: responsive.ip(3))),
                                        Divider(),
                                        Text(snapshot.data[index].text,
                                            style: TextStyle(
                                                fontSize: responsive.ip(1.5))),
                                        Divider(),
                                        RaisedButton(
                                            child: Text("Read more..."),
                                            onPressed: () {})
                                      ])));
                        });
                  } else {
                    return Align(
                        alignment: FractionalOffset.center,
                        child: CircularProgressIndicator());
                  }
                })));
  }
}
