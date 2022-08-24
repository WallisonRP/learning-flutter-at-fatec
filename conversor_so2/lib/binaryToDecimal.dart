// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

class BinaryToDecimal extends StatefulWidget {
  const BinaryToDecimal({Key? key}) : super(key: key);

  @override
  State<BinaryToDecimal> createState() => _BinaryToDecimalState();
}

class _BinaryToDecimalState extends State<BinaryToDecimal> {

  dynamic _resultado = "";
  TextEditingController _controller = TextEditingController();

  _calcular(String binario) {
    // String binario = "100101001000111001";
    List bin = binario.split("");
    
    var reversedList = List.from(bin.reversed);
    num aux = 0;
    int decimal = 0;
    
    for(int i = 0; i < bin.length; i++) {
      aux = pow(2, i);
      aux = aux * int.parse(reversedList[i]);
      decimal += aux.toInt();
  }
  
    return decimal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binário para Decimal"),
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
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
              padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: ElevatedButton(
                onPressed: (){
                  String teste2 = _controller.text;
                  var _exibir = _calcular(teste2);

                  setState(() {
                    _resultado = _exibir.toString();
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