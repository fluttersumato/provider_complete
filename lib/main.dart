import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_complete/screens/HomePage.dart';
import 'package:provider_complete/providers/CountProvider.dart';

import 'screens/example_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Register Provider
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: ExampleOne(),
      ),
    );
  }
}
