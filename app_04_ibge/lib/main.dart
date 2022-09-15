import 'package:app_04_ibge/view/tela_detalhes.dart';
import 'package:app_04_ibge/view/tela_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'IBGE',
    initialRoute: 'telaPrincipal',
    routes: {
      'telaPrincipal' :(context) => TelaPrincipal(),
      'telaDetalhes' :(context) => TelaDetalhes()
    },
    debugShowCheckedModeBanner: false,
  ));
}

