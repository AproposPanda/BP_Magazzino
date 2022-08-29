import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart' as route_dashboard;
import 'theme.dart' as Theme;

void main() => runApp(const Order());

final utente = TextEditingController();
final password = TextEditingController();

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "BP Magazzino",
      home: Scaffold(
        body: MainStatefulWidget(),
      ),
    );
  }
}

class MainStatefulWidget extends StatefulWidget {
  const MainStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MainStatefulWidget> createState() => Main_Widget();
}

class Main_Widget extends State<MainStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.primario, child: Text("prova"));
  }
}
