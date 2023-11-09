import 'package:aplikasi_peminjaman/pages/constanst/color.dart';
import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:aplikasi_peminjaman/pages/signin.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/bg.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                  text: TextSpan(
                text: tWelcome,
                style: TextStyle(
                  fontFamily: "Welcome",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff060000),
                  height: 37 / 32,
                ),
              )),
              Image(image: AssetImage('assets/image/amico.png')),
              Column(
                children: [
                  Text(
                    tDefinition,
                    style: const TextStyle(
                      fontFamily: "Rubik Mono One",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff060000),
                      height: 30 / 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    tPenjelas,
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      height: 20 / 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignIn();
                      },
                    ));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                    width: 300,
                    height: 49,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: tBaeckgroun),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Get Start",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        // Icon(Icon.arrow_forward,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
