// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         width: _mediaQuery.size.width * 0.3,
    //         height: _mediaQuery.size.height * 0.4,
    //         decoration: const BoxDecoration(
    //           color: Colors.blueAccent,
    //         ),
    //       ),
    //       Container(
    //         width: _mediaQuery.size.width * 0.6,
    //         height: _mediaQuery.size.height * 0.8,
    //         decoration: const BoxDecoration(
    //           color: Colors.redAccent,
    //         ),
    //       )
    //     ],
    //   ),
    // );

    return Scaffold(
        //type 1
        // body: Builder(builder: (context) {
        //   if (_mediaQuery.orientation == Orientation.portrait) {
        //     return portraitWidget(_mediaQuery.size);
        //   } else {
        //     return landscapeWidget(_mediaQuery.size);
        //   }
        // }),

        //type2
        body: OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return portraitWidget(_mediaQuery.size);
        } else {
          return landscapeWidget(_mediaQuery.size);
        }
      },
    ));
  }

  Widget portraitWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(color: Colors.redAccent),
        child: const Center(
          child: Text(
            "Portrait",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget landscapeWidget(Size size) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.8,
        decoration: const BoxDecoration(
          color: Colors.yellowAccent,
        ),
        child: const Center(
          child: Text(
            "Landscape",
            style: TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
