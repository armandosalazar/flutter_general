import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final textStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Number of Clicks:',
            style: textStyle,
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
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
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'ABC')
        ],
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
