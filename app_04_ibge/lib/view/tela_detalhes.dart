import 'package:flutter/material.dart';

import '../model/pais.dart';

class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({super.key});

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {

  @override
  Widget build(BuildContext context) {

    //RECUPERAR O Pais PASSADO COM PARÂMETRO

    var pais = ModalRoute.of(context)!.settings.arguments as Pais;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('IBGE'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black26,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            Image.network(
              'https://countryflagsapi.com/png/${pais.abreviatura.toLowerCase()}'),
            Text(pais.nome),
            Text(pais.historico)
          ],
        ),
        ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        backgroundColor: Colors.black87,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 3),
            content: Text('${pais.nome} adicionado aos favoritos.'),
          ));
          Navigator.pop(context);
        },
      ),
      
    );
  }
}