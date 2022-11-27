import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({Key? key}) : super(key: key);

  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components'),
      ),
      body: ListView(
        children: <Widget>[
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            title: const Text('List title'),
            subtitle: const Text('List subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Tap');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('List title'),
            subtitle: const Text('List subtitle'),
            trailing: const Icon(Icons.arrow_forward),
            iconColor: Colors.blue,
            onTap: () {
              print('Tap');
            },
          ),
          const Divider(),
          const ListTile(
            title: Text('Works'),
          )
        ],
      ),
    );
  }
}
