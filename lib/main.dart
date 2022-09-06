// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'routes/dashboard.dart' as route_dashboard;
import 'routes/theme.dart' as themes;

void main() => runApp(const Main());

final utente = TextEditingController();
final password = TextEditingController();

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

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
  State<MainStatefulWidget> createState() => MainWidget();
}

class MainWidget extends State<MainStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themes.primario,
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themes.secondario),
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
                        color: themes.primario,
                        border: Border.all(color: themes.giallo),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: utente,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Nome Utente",
                            hintStyle: TextStyle(color: Colors.white)),
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
                        color: themes.primario,
                        border: Border.all(color: themes.giallo),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white)),
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
                      primary: themes.giallo,
                      fixedSize: const Size(350, 50),
                    ),
                    child: Text("ACCEDI", style: themes.Text_Style_Button_Text),
                    onPressed: () {
                      print(utente.text + " " + password.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const route_dashboard.Dashboard()));
                    }),
              ],
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
