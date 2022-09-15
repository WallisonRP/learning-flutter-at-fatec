import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {

  //Atributos
  final String marca;
  final String modelo;
  final String foto;

  //Construtor
  const CarroWidget(this.marca, this.modelo, this.foto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), 
        // color: Colors.black45,
        border: Border.all(
          width: 1,
          color: Color(0xFFec008c)
        ),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFf05a28),
            Color(0xFFec008c)
          ]
          
        ) 
        ),

      width: MediaQuery.of(context).size.width,
      height: 300,
      // color: Colors.black45,
      child: Column(
        children: [
          Text(
            marca,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,

            ),
            ),
          Text(
            modelo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
            ),
          Image.asset(
            "lib/images/$foto",
            height: 250,
            fit: BoxFit.fill,
            ),
        ],
      ),
    );
  }
}