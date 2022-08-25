// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {
  //Atributos
  final String marca;
  final String modelo;
  final String foto;
  final double alturaPadrao = 300.0;

  //Construtor
  const CarroWidget(this.marca, this.modelo, this.foto, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.black45,
          border: Border.all(width: 1, color: Color(0xFFec008c)),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFf05a28), Color(0xFFec008c)])),

      width: MediaQuery.of(context).size.width * 0.44,
      height: alturaPadrao,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    marca,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Text(
                  modelo,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            "images/$foto",
            height: alturaPadrao * 0.6,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
