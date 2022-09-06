// ignore_for_file: avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'theme.dart' as themes;
import 'order.dart' as route_order;

bool menu = false;

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard",
      home: Scaffold(
        body: const MainStatefulWidget(),
        backgroundColor: themes.secondario,
      ),
    );
  }
}

class MainStatefulWidget extends StatefulWidget {
  const MainStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MainStatefulWidget> createState() => DashboardWidget();
}

class DashboardWidget extends State<MainStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      //Lateral Menu
      Expanded(
        child: Column(
          children: [
            SizedBox(
                height: 100,
                child: DrawerHeader(
                    child: Image.asset(
                  'images/logo.png',
                  height: 30,
                ))),
            Divider(
              height: 30,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: themes.giallo,
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Nuovo"),
              iconColor: Colors.white,
              textColor: Colors.white,
              hoverColor: themes.giallo,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const route_order.Order()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              iconColor: Colors.white,
              textColor: Colors.white,
              hoverColor: themes.giallo,
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              iconColor: Colors.white,
              textColor: Colors.white,
              hoverColor: themes.giallo,
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              iconColor: Colors.white,
              textColor: Colors.white,
              hoverColor: themes.giallo,
              onTap: () {
                print("Home");
              },
            ),
          ],
        ),
      ),
      // Dashboard
      Expanded(
        flex: 5,
        child: Container(
          color: themes.primario,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          primary: themes.giallo,
                          fixedSize: const Size(95, 38),
                        ),
                        child: Row(
                          children: const [Text("FILTRO")],
                        )),
                    const SizedBox(width: 20),
                    Container(
                      height: 38,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: themes.secondario,
                      ),
                      child: TextField(
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 5),
                            suffixIcon: IconButton(
                              icon:
                                  const Icon(Icons.search, color: Colors.white),
                              onPressed: () {
                                print("click");
                              },
                            ),
                            hintText: '  Search',
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Table(
                              border: TableBorder.all(),
                              columnWidths: const <int, TableColumnWidth>{
                                0: FixedColumnWidth(100),
                                1: FixedColumnWidth(100),
                                2: FixedColumnWidth(100),
                                3: FixedColumnWidth(100),
                                4: FixedColumnWidth(100),
                                5: FixedColumnWidth(100),
                                6: FixedColumnWidth(100),
                                7: FixedColumnWidth(100),
                                8: FixedColumnWidth(100),
                                9: FixedColumnWidth(100),
                                10: FixedColumnWidth(100),
                                11: FixedColumnWidth(100)
                              },
                              children: <TableRow>[
                                TableRow(children: <Widget>[
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                ]),
                                TableRow(children: <Widget>[
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.white)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                ]),
                                TableRow(children: <Widget>[
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                  Container(
                                      child: const Center(child: Text("prova")),
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow)),
                                ])
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
