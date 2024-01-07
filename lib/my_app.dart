import 'package:flutter/material.dart';
import 'package:myapp/Pages/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //itens que ta na tela
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Tras varios itens
      debugShowCheckedModeBanner: false, //tirar a faixa de debug
    
      home: HomeApp(),
    );
  }
}