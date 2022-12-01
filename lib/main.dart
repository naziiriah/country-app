// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_9/views/country.dart';
import 'package:practice_9/views/homePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
      routes: {
        '/': (context) => HomePage(),
        '/country': (context) => Country()
      },
  ));
}
