import 'package:flutter/material.dart';
import 'package:flutter_general/src/pages/components_page.dart';
import 'package:flutter_general/src/pages/home_page.dart';

// import 'package:flutter_general/src/pages/count_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter General',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/components ': (context) => const ComponentsPage(),
      },
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      // home: CountPage(),
      // home: ComponentsPage()
    );
  }
}
