import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

//  con _ hacemos privada la clase
class _CounterPageState extends State<CounterPage> {
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
      /* floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),*/
      floatingActionButton: _makeButtons(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _makeButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Genera una pequeña caja, de alguna forma un div
        const SizedBox(width: 35.0),
        FloatingActionButton(
          onPressed: _add,
          child: const Icon(Icons.add),
        ),
        const SizedBox(width: 5.0),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _count--;
            });
          },
          child: const Icon(Icons.remove),
        ),
        // Expande a todo el ancho posible a su child
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _count = 0;
            });
          },
          child: const Icon(Icons.exposure_zero),
        )
      ],
    );
  }

  void _add() {
    setState(() => _count++);
  }
}
