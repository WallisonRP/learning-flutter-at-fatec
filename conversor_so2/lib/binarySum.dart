// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class BinarySum extends StatefulWidget {
  const BinarySum({Key? key}) : super(key: key);

  @override
  State<BinarySum> createState() => _BinarySumState();
}

class _BinarySumState extends State<BinarySum> {
  dynamic _resultadoBinarioFinal = "";
  String _resultadoDecimal1 = "";
  String _resultadoDecimal2 = "";
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  _decimalPBinario(int num) {
    String teste1 = "";
    int resto;

    while (num > 0) {
      resto = num % 2;
      teste1 = resto.toString() + teste1;
      num = num ~/ 2;
    }
    return teste1;
  }

  _binarioPDecimal(String binario) {
    // String binario = "100101001000111001";
    List bin = binario.split("");

    var reversedList = List.from(bin.reversed);
    num aux = 0;
    int decimal = 0;

    for (int i = 0; i < bin.length; i++) {
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
        title: Text("Soma Binária"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Text(
                "Digite os valores para a soma",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Digite o primeiro valor",
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black54, width: 2.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
              child: Container(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextField(
                  controller: _controller2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Digite o segundo valor",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black54, width: 2.0))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  int valor1 = _binarioPDecimal(_controller1.text);
                  int valor2 = _binarioPDecimal(_controller2.text);
                  String retornoBinario = _decimalPBinario(valor1 + valor2);

                  setState(() {
                    _resultadoBinarioFinal =
                        "$retornoBinario (bin) = ${valor1 + valor2} (dec)";
                    _resultadoDecimal1 =
                        "${_controller1.text} (bin) = $valor1 (dec)";
                    _resultadoDecimal2 =
                        "${_controller2.text} (bin) = $valor2 (dec)";
                  });
                },
                child: Text(
                  "Calcular",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 0, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Valor 1: "), Flexible(child: Text(_resultadoDecimal1))],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Valor 2: "), Flexible(child: Text(_resultadoDecimal2))],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Resultado: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Flexible(
                    child: Text(
                    _resultadoBinarioFinal,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                  )
                ],
              ),
            ),
          ],
        ),
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
