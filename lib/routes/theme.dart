// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle Text_Style_Button_Text =
    TextStyle(fontSize: 18, color: bianco, fontWeight: FontWeight.bold);
TextStyle Text_Style_Text =
    TextStyle(fontSize: 18, color: bianco, fontWeight: FontWeight.normal);
TextStyle Text_Style_Search = const TextStyle(
    fontSize: 18,
    color: Color.fromARGB(247, 137, 137, 137),
    fontWeight: FontWeight.normal);
TextStyle Text_Style_Bold =
    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold);
TextStyle Text_Style_Corsivo =
    GoogleFonts.lato(fontSize: 24, fontStyle: FontStyle.italic);
TextStyle Text_Style_Title =
    GoogleFonts.raleway(fontSize: 24, fontStyle: FontStyle.italic);

ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: Text_Style_Button_Text,
    fixedSize: const Size(200, 100),
    primary: grigio);
Color giallo = const Color.fromARGB(247, 233, 174, 36);
Color nero = Colors.black;
Color grigio = const Color.fromARGB(255, 50, 50, 50);
Color grigio_chiaro = const Color.fromARGB(255, 245, 245, 245);
Color bianco = Colors.white;

//Color primario = Color.fromARGB(255, 78, 78, 78);
//Color secondario = Color.fromARGB(255, 50, 50, 50);

Color primario = const Color.fromARGB(255, 223, 222, 222);
Color secondario = const Color.fromARGB(255, 142, 142, 142);
