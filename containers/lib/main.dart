// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width - 32;
    var altura = MediaQuery.of(context).size.height - 32;

    return Scaffold(
        appBar: AppBar(
          title: Text("Linhas e Colunas"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Center(child: Text("A")),
                      )),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Center(child: Text("B")),
                      )),
                    ],
                  )),
              Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Center(child: Text("C")),
                      ))
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Center(child: Text("D")),
                      )),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)),
                        child: Center(child: Text("E")),
                      )),
                    ],
                  )),
            ],
          ),
        ));
  }
}
