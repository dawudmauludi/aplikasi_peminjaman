import 'package:aplikasi_peminjaman/pages/awal.dart';
import 'package:aplikasi_peminjaman/pages/homepages.dart';
import 'package:aplikasi_peminjaman/pages/intro.dart';
import 'package:aplikasi_peminjaman/pages/pinjamlaptop.dart';
import 'package:aplikasi_peminjaman/pages/signUp.dart';
import 'package:aplikasi_peminjaman/pages/signin.dart';
import 'package:aplikasi_peminjaman/pages/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
