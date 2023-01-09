// ignore_for_file: no_leading_underscores_for_local_identifiers

import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: _mediaQuery.size.width * 0.5,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
          Container(
            width: _mediaQuery.size.width * 0.5,
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
