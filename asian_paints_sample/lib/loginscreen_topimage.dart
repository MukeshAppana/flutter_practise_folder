// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreenTopImgae extends StatelessWidget {
  const LoginScreenTopImgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: SvgPicture.asset(
            "assets/images/bg_page.svg",
            // width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.fitWidth,
          ),
        ),
        Center(
          child: Align(
            alignment: const Alignment(0.0, -0.3),
            child: Image.asset("assets/images/bathsense_logo.png"),
          ),
        )
      ],
    );
  }
}
