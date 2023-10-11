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
  double result = 0;
  double height = 0;
  double weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("IMCalc"),
            const TextField(
              keyboardType: TextInputType.number, 
              textAlign: TextAlign.justify, 
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Peso')
              ),
            const TextField(
              keyboardType: TextInputType.number, 
              textAlign: TextAlign.justify, 
              decoration: InputDecoration(
                border: OutlineInputBorder(), 
                labelText: 'Altura')
              ),
            TextButton(
              onPressed: () {
                setState(() {
                  result = Calculator.imcCalc(weight, height);
                });
              },
              child: const Text("Calcular")
              ),
            Text('$result')
            ],
          )
        ),
      );
  }
}


