import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scrollscreen',
      routes: {
        'basic': (BuildContext context) => const BasicScreen(),
        'scrollscreen': (BuildContext context) => const ScrollScreen(),
      },
    );
  }
}
