import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  double result = 0;

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
              onPressed: () {}, 
              child: const Text("Calcular")
              ),
            Text('$result')
            ],
          )
        ),
      );
  }
}


