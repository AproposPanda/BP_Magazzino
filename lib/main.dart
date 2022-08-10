import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

TextStyle Text_Style_Button_Text =
    TextStyle(fontSize: 18, color: nero, fontWeight: FontWeight.bold);

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
Color grigio = Color.fromARGB(255, 230, 230, 230);
Color grigio_chiaro = Color.fromARGB(255, 245, 245, 245);
Color bianco = Colors.white;

final utente = TextEditingController();
final password = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BP Magazzino",
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: grigio),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //logo
                  Image.asset(
                    'images/logo.png',
                    height: 170,
                  ),
                  const SizedBox(height: 30),
                  // Username text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: grigio_chiaro,
                          border: Border.all(color: giallo),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: utente,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nome Utente",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Password text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: grigio_chiaro,
                          border: Border.all(color: giallo),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Login Button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        primary: giallo,
                        fixedSize: const Size(350, 50),
                      ),
                      child: Text("ACCEDI", style: Text_Style_Button_Text),
                      onPressed: () {
                        print(utente.text + " " + password.text);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@override
void dispose() {
  // Clean up the controller when the widget is disposed.
  utente.dispose();
  password.dispose();
}
/* prova*/
