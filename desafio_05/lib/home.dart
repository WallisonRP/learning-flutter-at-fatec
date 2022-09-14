// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'textinput.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TextEditingController tituloController = TextEditingController();
    TextEditingController autorController = TextEditingController();
    TextEditingController editoraController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              'Cadastro de Livros',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 16),
              child: inputPadrao(
                titulo: 'Titulo',
                controller: tituloController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: inputPadrao(
                      titulo: 'Autor',
                      controller: autorController,
                    ),
                    flex: 1,
                  ),
                  Container(
                    width: 25,
                  ),
                  Flexible(
                    child: inputPadrao(
                      titulo: 'Editora',
                      controller: editoraController,
                    ),
                    flex: 2,
                  ),
                  // Text("data")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Gravar'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(32, 20, 32, 20)),
                  ),
                  Container(
                    width: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      tituloController.clear();
                      autorController.clear();
                      editoraController.clear();
                    },
                    child: Text('Limpar'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(32, 20, 32, 20)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  class Caixa(titulo, autor, editora) {
    return showDialog(
      context: context, 
      builder: builder
      );
  }

}
