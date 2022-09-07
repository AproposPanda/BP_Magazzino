import 'package:flutter/material.dart';
import 'theme.dart' as themes;

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
  State<MainStatefulWidget> createState() => OrderWidget();
}

class OrderWidget extends State<MainStatefulWidget> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Creazione nuovo ordine'),
        backgroundColor: themes.secondario,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: themes.primario),
              child: Stepper(
                type: stepperType,
                physics: const ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  //generale
                  Step(
                    title: const Text('Generale'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Numero ordine',
                            hintText: "123/2022",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Parte ordine',
                            hintText: "1/3",
                            prefixIcon: Icon(Icons.create),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Data ordine',
                            hintText: "01/01/2022",
                            prefixIcon: Icon(Icons.date_range),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Cliente',
                            hintText: "Bassano Parquet",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Essenza',
                            hintText: "Rovere",
                            prefixIcon: Icon(Icons.eco),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Qualità',
                            hintText: "AB - R1 - R2",
                            prefixIcon: Icon(Icons.abc),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Verniciatura',
                            hintText: "Buenos Aires",
                            prefixIcon: Icon(Icons.color_lens),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Data consegna',
                            hintText: "31/01/2022",
                            prefixIcon: Icon(Icons.add_alarm),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Tassativo',
                            hintText: "AGGIUNGERE CHECK BOX",
                            prefixIcon: Icon(Icons.taxi_alert),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Commerciale',
                            hintText: "Mario Rossi",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Note aggiuntive',
                            hintText: "Note",
                            prefixIcon: Icon(Icons.notes),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  //struttura
                  Step(
                    title: const Text('Struttura'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Composizione',
                            hintText: "2/3 strati",
                            prefixIcon: Icon(Icons.layers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Spessore',
                            hintText: "15",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Larghezza',
                            hintText: "145/195/240",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Lunghezza',
                            hintText: "1200/2400",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Accessori',
                            hintText: "Battiscopa/tori/soglie ecc",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Lamelle o Pavimento',
                            hintText: "L o P",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Tipo Supporto',
                            hintText: "B o E",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Terzista costruttore',
                            hintText: "Ivanik o altro",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Inviato in costruzione',
                            hintText: "S o N",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Data DDT',
                            hintText: "01/01/2022",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Numero DDT',
                            hintText: "123",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Data richiesta prontezza',
                            hintText: "31/01/2022",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Tassatività',
                            hintText: "si o no",
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  //superficie
                  Step(
                    title: const Text('Superficie'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  //finitura
                  Step(
                    title: const Text('Finitura'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 3
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  //spezione
                  Step(
                    title: const Text('Spedizione'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Mobile Number'),
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
