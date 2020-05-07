import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String nome;
  
  Page2({
    Key key,
    this.nome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page2')),
      body: Container(
        child: Center(child: Text('O nome tecebido: $nome')),
      ),
    );
  }
}
