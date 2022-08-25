import 'package:desafio_04/view/componentePrincipal.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatelessWidget {
  String corpo =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lorem Ipsum"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ComponentePrincipal(
              icone: Icons.house,
              titulo: "Titulo",
              corpo: corpo,
            ),
            ComponentePrincipal(
              icone: Icons.house,
              titulo: "Titulo",
              corpo: corpo,
            ),
            ComponentePrincipal(
              icone: Icons.house,
              titulo: "Titulo",
              corpo: corpo,
            ),
            ComponentePrincipal(
              icone: Icons.house,
              titulo: "Titulo",
              corpo: corpo,
            ),
            ComponentePrincipal(
              icone: Icons.house,
              titulo: "Titulo",
              corpo: corpo,
            ),
          ],
        ),
      ),
    );
  }
}
