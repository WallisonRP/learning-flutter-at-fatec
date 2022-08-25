// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class ComponentePrincipal extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String corpo;

  const ComponentePrincipal(
      {Key? key,
      required this.icone,
      required this.titulo,
      required this.corpo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      // height: 300,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              children: [Icon(icone), Text(titulo)],
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              children: [Flexible(child: Text(corpo))],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text("Explore"),
              ),
              Icon(
                Icons.east,
                size: 20,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
