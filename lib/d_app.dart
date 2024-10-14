import 'package:flutter/material.dart';
import 'package:stellar_in_the_project/interface.dart';

class DApp extends StatelessWidget {
  const DApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Interface(),
    );
  }
}

