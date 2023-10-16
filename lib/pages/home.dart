import 'package:flutter/material.dart';
import 'package:imc_calc/Classes/calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = '';
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("IMC", 
                      style: TextStyle(
                        fontSize: 64, 
                        fontWeight: 
                        FontWeight.w600
                        )
                      ),
                    Text("alc", 
                      style: TextStyle(
                      fontSize: 64, 
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1.3
                        ..color = Colors.black,
                        ),
                      )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    TextField(
                    keyboardType: TextInputType.number, 
                    textAlign: TextAlign.justify, 
                    decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12), 
                    labelText: 'Peso (kg)'),
                    controller: weight,
                  ),
                    const SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.number, 
                      textAlign: TextAlign.justify, 
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(), 
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        labelText: 'Altura (cm)'),
                        controller: height,
                      ),
                  ],)),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: SizedBox()),
                      Expanded(
                        flex: 6,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll<Color>(Colors.purple),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25), 
                                side: const BorderSide(color: Colors.purple)
                                )
                              )
                            ),
                          onPressed: () {
                            setState(() {
                              result = Calculator.imcCalc(double.tryParse(weight.text.trim()) ?? 0, double.tryParse(height.text.trim()) ?? 0);
                            });
                          },
                          child: const Text("CALCULAR", 
                            style: TextStyle(color: Colors.black, 
                              fontSize: 24, 
                              fontWeight: FontWeight.w600, 
                              letterSpacing: 4.0
                            ),
                          )
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox()
                      )
                    ],
                  ),
                ),
              Column(
                children: [
                  Text(result, style: const TextStyle(fontSize: 20)),
                  Text(Calculator.imcResult(double.tryParse(result) ?? 0), style: const TextStyle(fontSize: 16)),
                ],
              )
              ],
            )
          ),
      ),
      );
  }
}