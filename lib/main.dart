import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imc_calc/Classes/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMCalc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme()
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO : saber onde exatamente se obterá height and weight
  String result = '';
  double? height = 0;
  double? weight = 0;

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
                    onChanged: (value) => weight = double.tryParse(value)
                  ),
                    const SizedBox(height: 15),
                    TextField(
                      keyboardType: TextInputType.number, 
                      textAlign: TextAlign.justify, 
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(), 
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        labelText: 'Altura (cm)'),
                        onChanged: (value) => height = double.tryParse(value)
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
                              result = Calculator.imcCalc(weight ?? 0, height ?? 0);
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
              Text(result, style: const TextStyle(fontSize: 20))
              ],
            )
          ),
      ),
      );
  }
}


