import 'package:flutter/material.dart';

import 'ProductCard.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Grid Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal, // Updated color scheme
        hintColor: Colors.orangeAccent,
        fontFamily: 'Roboto', // IdealMart style font
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/products': (context) => ProductGridPage(),
      },
    );
  }
}
