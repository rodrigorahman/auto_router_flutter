import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  String nome;
  String idade;

  Page3({ @required this.nome, @required this.idade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page3')),
      body: Center(
        child: Column(children: <Widget>[
          Text(nome),
          Text(idade),
        ],),
      ),
    );
  }
}