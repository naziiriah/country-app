// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_9/models/viewModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ViewMode mode = ViewMode(Dark: false, Light: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mode.Dark ? Color.fromARGB(255, 32, 44, 55) : Color.fromARGB(255, 250, 250, 250),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Where in the world",
            style: TextStyle(
              color: mode.Light ? Color.fromARGB(255, 17, 21, 23): Colors.white,
              fontFamily: "Nunito",
            ),),
            Row(
              children: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      setState(() {
                        if (mode.Dark == false) {
                          mode = ViewMode(Dark: true, Light: false);
                        } else {
                          mode = ViewMode(Dark: false, Light: true);
                        }
                      });
                    },
                    icon:
                        mode.Light ? Icon(Icons.sunny, color: Color.fromARGB(255, 32, 44, 55),) : Icon(Icons.nightlight, color: Colors.white,),
                    label: mode.Dark
                        ? Text(
                            "Dark Mode",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text("Light Mode",
                            style: TextStyle(color: Color.fromARGB(255, 17, 21, 23))))
              ],
            )
          ],
        ),
        backgroundColor: mode.Dark ? Color.fromARGB(255, 32, 44, 55) : Color.fromARGB(255, 250, 250, 250),
        ),
      body: Column(),
    );
  }
}
