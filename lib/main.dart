import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle text_style_standard =
    GoogleFonts.lato(fontSize: 20, fontStyle: FontStyle.normal);
ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: text_style_standard,
    fixedSize: const Size(200, 100),
    primary: grigio);
Color giallo = Color.fromARGB(247, 233, 174, 36);
Color nero = Colors.black;
Color grigio = Color.fromARGB(255, 230, 230, 230);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BP magazzino',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: grigio)),
    );
  }
}
