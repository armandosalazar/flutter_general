import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

//  con _ hacemos privada la clase
class _CountPageState extends State<CountPage> {
  // con _ hacemos las propiedades privadas
  final _textStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Number of taps:',
            style: _textStyle,
          ),
          Text(
            '$_count',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
