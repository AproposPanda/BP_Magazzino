import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle Text_Style_Button_Text =
    TextStyle(fontSize: 18, color: bianco, fontWeight: FontWeight.bold);
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
Color giallo = Color.fromARGB(247, 233, 174, 36);
Color nero = Colors.black;
Color grigio = Color.fromARGB(255, 50, 50, 50);
Color grigio_chiaro = Color.fromARGB(255, 245, 245, 245);
Color bianco = Colors.white;

Color primario = Color.fromARGB(255, 78, 78, 78);
Color secondario = Color.fromARGB(255, 50, 50, 50);
