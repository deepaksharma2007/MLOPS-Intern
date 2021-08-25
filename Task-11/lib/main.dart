import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'animation.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String cmd;
  String data;

  web(cmd) async {
    var url = "http://192.168.43.140/cgi-bin/info.py?R=${cmd}";
    var r = await http.get(url);
    // var sc = r.statusCode;

    print(data);
    setState(() {
      data = r.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Docker App"),
        actions: [IconButton(icon: Icon(Icons.account_box), onPressed: null)],
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
      ),
      //backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            MyAnimation(),
            SizedBox(
              height: 10,
            ),
            TextField(
              cursorColor: Colors.black,
              cursorWidth: 3,
              style: TextStyle(fontSize: 25, color: Colors.deepPurpleAccent),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your CMD",
                prefixIcon: Icon(Icons.desktop_windows),
              ),
              onChanged: (value) {
                cmd = value;
                print(cmd);
              },
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () {
                web(cmd);
                // print(cmd);
              },
              child: Text(
                "RUN",
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
            Container(
                //alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 300,
                //color: Colors.black12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 5, color: Colors.pinkAccent),
                    color: Colors.black),
                child: SingleChildScrollView(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Card(
                          child: Text(
                            "DOCKER TERMINAL",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Card(
                        child: Text(
                          "root@192.168.43.209",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Text(
                        data ?? "output is coming ..",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
