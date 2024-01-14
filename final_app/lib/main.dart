import 'package:final_app/Menupage.dart';

import 'package:final_app/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Intro(),
      debugShowCheckedModeBanner: true,
      routes:{
        '/intropage' : (context) => Intro(),
        '/Menupage' : (context) => Menupage(),


      },
    );

  }
}

