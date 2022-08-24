// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.red,
        title: Text("Computer Store", style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.computer,
                  color: Colors.black54,
                  size: 120,
                  )
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.")
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.mouse_outlined,
                        color: Colors.black54,
                        size: 30,
                        ),
                      ),
                    Text("Mouse")
                  ],
                ),
                  ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.monitor,
                        color: Colors.black54,
                        size: 30,
                      ),
                      ),
                    Text("Monitor")
                  ],
                ),
                  ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.print_outlined,
                        color: Colors.black54,
                        size: 30,
                        ),
                      ),
                    Text("Printer")
                  ],
                ),
                  ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        Icons.tablet_mac,
                        color: Colors.black54,
                        size: 30,
                        ),
                      ),
                    Text("Tablet")
                  ],
                ),
                  ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Text("Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.") 
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}