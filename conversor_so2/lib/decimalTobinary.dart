// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class DecimalToBinary extends StatefulWidget {
  const DecimalToBinary({Key? key}) : super(key: key);

  @override
  State<DecimalToBinary> createState() => _DecimalToBinaryState();
}

class _DecimalToBinaryState extends State<DecimalToBinary> {

  dynamic _resultado = "";
  TextEditingController _controller = TextEditingController();

  _calcular(int num) {
  String teste1 = "";
  int resto;

  while (num > 0) { 
    resto = num%2;
    teste1 = resto.toString() + teste1;
    num = num ~/ 2;
  }
  
  return teste1;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decimal para Binário"),
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
              child: Text("Digite um valor em Decimal", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
              keyboardType: TextInputType.number,
              controller: _controller,
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
              padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: ElevatedButton(
                onPressed: (){
                  int num = int.parse(_controller.text);
                  String _exibir = _calcular(num);
                  setState(() {
                    _resultado = _exibir;
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