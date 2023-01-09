import "package:asian_paints_sample/login_type.dart";
import 'package:flutter/material.dart';
import "package:asian_paints_sample/loginscreen_topimage.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: LoginScreenTopImgae(),
        ),
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.only(top: 55),
          child: const SizedBox(
              child: Text("Choose your account",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))),
        ),
        Expanded(child: LoginUserType())
      ],
    ));
  }
}
