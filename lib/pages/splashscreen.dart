import 'dart:async';

import 'package:aplikasi_peminjaman/pages/intro.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Intro(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Pinjam Barang",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEBEDD4),
                        )),
                  ),
                  Image.asset('assets/image/logo.png'),
                  RichText(
                    text: TextSpan(
                      text: "SMKN 1 Pasuruan",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEBEDD4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
