import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/C1.dart';
import 'Pages/C2.dart';
import 'Pages/P.dart';
import 'Pages/G1.dart';
import 'Pages/G2.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomePage(),
      '/1': (context) => C1(),
      '/2': (context) => C2(),
      '/3': (context) => P(),
      '/4': (context) => G1(),
      '/5': (context) => G2(),
    },
  ));
}
