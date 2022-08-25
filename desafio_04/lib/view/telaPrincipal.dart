import 'package:desafio_04/view/componentePrincipal.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lorem Ipsum"),
        centerTitle: true,
      ),
      body: Column(
        children: [ComponentePrincipal()],
      ),
    );
  }
}
