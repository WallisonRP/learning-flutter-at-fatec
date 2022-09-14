// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class inputPadrao extends StatefulWidget {
  final String titulo;
  final TextEditingController controller;
  const inputPadrao({Key? key, required this.titulo, required this.controller}) : super(key: key);

  @override
  State<inputPadrao> createState() => _inputPadraoState(this.titulo, this.controller);
} 

class _inputPadraoState extends State<inputPadrao> {
  String titulo;
  // TextEditingController controller = TextEditingController();
  TextEditingController controller;
  _inputPadraoState(this.titulo, this.controller);


  // TextEditingController widget.titulo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: widget.titulo,
        labelStyle: TextStyle(
            color: Colors.black87, fontSize: 17, fontFamily: 'AvenirLight'),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0)),
      ),
      style: TextStyle(
          color: Colors.black87, fontSize: 17, fontFamily: 'AvenirLight'),
    );
  }
}
