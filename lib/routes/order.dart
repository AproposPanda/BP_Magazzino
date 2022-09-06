import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Creazione nuovo ordine'),
        backgroundColor: Theme.secondario,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Theme.primario),
                child: Stepper(
                  type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: new Text('Generale'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Numero ordine'),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Parte ordine'),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Data Ordine'),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Numero Ordine'),
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Parte ordine'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Struttura'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Home Address'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Postcode'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Superficie'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Finitura'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 3
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: new Text('Spedizione'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 4
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 4 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
