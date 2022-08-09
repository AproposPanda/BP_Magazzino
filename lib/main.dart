import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

TextStyle Text_Style_Standard =
    GoogleFonts.lato(fontSize: 20, fontStyle: FontStyle.normal);
TextStyle Text_Style_Title =
    GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold);
ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: Text_Style_Standard,
    fixedSize: const Size(200, 100),
    primary: grigio);
Color giallo = Color.fromARGB(247, 233, 174, 36);
Color nero = Colors.black;
Color grigio = Color.fromARGB(255, 230, 230, 230);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BP Magazzino",
      home: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: grigio),
            child: Column(
              children: [
                Text(
                  "prova",
                  style: Text_Style_Title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/* prova*/
