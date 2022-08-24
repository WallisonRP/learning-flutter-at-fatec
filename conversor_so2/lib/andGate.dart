// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AndGate extends StatefulWidget {
  const AndGate({Key? key}) : super(key: key);

  @override
  State<AndGate> createState() => _AndGateState();
}

class _AndGateState extends State<AndGate> {

  dynamic _resultado = "";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Porta AND"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Text("Digite um valor em Binário", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Digite um valor",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 2.0
                    )
                  )
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    _resultado = _controller.text;
                  });
                }, child: Text("Calcular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20)
                ),
                ),
              ),
            Text(
              _resultado,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Wallison Franklin Pereira - ADS Manhã")],
        ),
      ),
    );
  }
}