import 'package:contatos/components.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: principal(),
    );
  }
}

class principal extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos", textDirection: TextDirection.ltr,),
        actions: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.add_rounded), onPressed: () {},),
            ],
          )
        ]
      ),
      body: ListView(
        children: [
          Contact("assets/eu.jpg", "Lucas", "(11)98729-8920 - Meu número"),
          Contact("assets/elias.jpg", "Elias", "(12)53526-2372 - Prof° de flutter"),
          Contact("assets/Rafaela.jpg", "Rafaela", "(11)97593-2398 - Amiga"),
          Contact("assets/Fernando.jpg", "Fernando", "(11)65748-3329 - Amigo"),
          Contact("assets/gabriela.jpg", "Gabriela", "(11)89543-4373 - Colega"),
          Contact("assets/joao.jpg", "João", "(11)13249-2436 - Professor"),
          Contact("assets/julio.jpg", "Julio", "(11)50349-8203 - Diretor"),
          Contact("assets/vitoria.jpg", "Vitoria", "(12)73649-3298 - Amiga"),
          Contact("assets/gleice.jpg", "Gleice", "(12)73649-3298 - Dentista"),
          Contact("assets/thiago.avif", "Thiago", "(14)92479-3224 - Amigo")
        ],
      ),
    );
  }
}
