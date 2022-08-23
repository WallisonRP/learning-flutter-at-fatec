// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BinarySum extends StatefulWidget {
  const BinarySum({Key? key}) : super(key: key);

  @override
  State<BinarySum> createState() => _BinarySumState();
}

class _BinarySumState extends State<BinarySum> {

  dynamic _resultado = "Resultado";
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Soma Binária"),
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
              child: Text("Digite os valores para a soma", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Digite o primeiro valor",
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
              padding: EdgeInsets.fromLTRB(0, 32, 0, 32),
              child: Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: _controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Digite o segundo valor",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 2.0
                    )
                  )
              ),
            ),
            ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    _resultado = _controller1.text + _controller2.text;
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