import 'package:flutter/material.dart';
import 'package:flutter_general/src/pages/home_page.dart';

// import 'package:flutter_general/src/pages/count_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)>{},
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: CountPage(),
      // home: ComponentsPage()
    );
  }
}
