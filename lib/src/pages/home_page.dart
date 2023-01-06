import 'package:flutter/material.dart';
import 'package:flutter_general/src/pages/counter_page.dart';
import 'package:http/http.dart' as http;

import 'users_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final textStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home pages"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'List of buttons',
            style: textStyle,
          ),
          const SizedBox(height: 15,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UsersPage()));
              },
              child: const Text('Navigate to Users')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/components');
              },
              child: const Text('Go to components')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CounterPage()));
              },
              child: const Text('Counter page'))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final service = Service(
              url: Uri.https('jsonplaceholder.typicode.com', '/posts/1'));
          final response = await service.fetchPost();
          // ignore: avoid_print
          print(response.body);
          // ignore: avoid_print
          print(response.statusCode);
          // ignore: avoid_print
          print(Service.version);
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'ABC'),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Users',
          ),
        ],
        currentIndex: 2,
      ),
    );
  }
}

class Service {
  static const String version = "0.0.0";

  final Uri url;

  Service({required this.url}) {
    // ignore: avoid_print
    print(url);
  }

  Future<http.Response> fetchPost() {
    return http.get(url);
  }
}

void navigateToUsers(BuildContext context) {
  Navigator.of(context).pushNamed('/users');
}

void navigateToComponents(BuildContext context) {
  Navigator.of(context).pushNamed('/components');
}
