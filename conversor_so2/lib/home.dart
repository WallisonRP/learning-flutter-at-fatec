// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'andGate.dart';
import 'binarySum.dart';
import 'binaryToDecimal.dart';
import 'decimalTobinary.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sistemas Operacionais II"),
      ),
      body: // padding: EdgeInsets.all(16),
          Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (((context) => DecimalToBinary())
                      )
                      )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    margin: EdgeInsets.only(right: 16),
                    // color: Colors.red,
                    child: Center(
                      child: Text(
                        "Decimal p/ Binário",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
                Flexible(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (((context) => BinaryToDecimal())
                      )
                      )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    // color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Binário p/ Decimal",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (((context) => BinarySum())
                      )
                      )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    margin: EdgeInsets.only(top: 60, right: 16),
                    // color: Colors.red,
                    child: Center(
                      child: Text(
                        "Soma Binária",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
                Flexible(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (((context) => AndGate())
                      )
                      )
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    margin: EdgeInsets.only(top: 60),
                    // color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Porta AND",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )),
              ],
            ),
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
