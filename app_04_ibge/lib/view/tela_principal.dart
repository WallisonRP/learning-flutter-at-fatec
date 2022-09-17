// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/pais.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  //LISTA DINÂMICA DE OBJETOS da classe Pais
  List<Pais> lista = [];

  //CARREGAR OS DADOS DO ARQUIVO JSON
  carregarDados() async {
    final String arquivoJson = await rootBundle.loadString(
      'lib/data/paises.json',
    );
    final dynamic d = await json.decode(arquivoJson);
    setState(() {
      d.forEach((item) {
        lista.add(Pais.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await carregarDados();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBGE'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.blue.shade700,
      body: Padding(
        padding: EdgeInsets.all(30),
        //
        // LISTVIEW
        //
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.public, size: 20,),
                title: Text(lista[index].nome),
                subtitle: Text(
                  'Capital: ${lista[index].capital}'
                ),
                trailing: Icon(Icons.arrow_right, size: 20,),
                tileColor: Color.fromARGB(255, 205, 218, 255),
                onTap: () {
                  Navigator.pushNamed(
                    context, 
                    'telaDetalhes',
                    arguments: lista[index]
                    );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
