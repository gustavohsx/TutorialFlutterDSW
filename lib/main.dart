import 'package:flutter/material.dart';
import 'package:tutorial_frontend/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Flutter',
      initialRoute: '/login',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
