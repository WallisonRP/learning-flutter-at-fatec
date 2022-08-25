import 'package:flutter/material.dart';

class ComponentePrincipal extends StatelessWidget {
  const ComponentePrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      // height: 300,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              children: [Icon(Icons.house), Text("Titulo")],
            ),
          ),
          Container(
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 32, 10, 32),
            child: Row(
              children: [
                Flexible(
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Row(
              children: [Text("Explore"), Icon(Icons.arrow_right_sharp)],
            ),
          ),
        ],
      ),
    );
  }
}
