import 'package:flutter/material.dart';

class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({super.key});

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBGE'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black26,
      body: Padding(padding: EdgeInsets.all(30)),
    );
  }
}