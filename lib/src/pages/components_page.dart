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
          ListTile(
            title: const Text('List title'),
            subtitle: const Text('List subtitle'),
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Tap');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('List title'),
            subtitle: const Text('List subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Tap');
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
