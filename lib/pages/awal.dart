import 'package:aplikasi_peminjaman/pages/constanst/field.dart';
import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:aplikasi_peminjaman/pages/homepages.dart';
import 'package:aplikasi_peminjaman/pages/signin.dart';
import 'package:flutter/material.dart';

class Awal extends StatelessWidget {
  Awal({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  text: TextSpan(
                    text: tAwal,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset('assets/image/awal.png'),
                Column(
                  children: [
                    MyTextField(
                      controller: usernameController,
                      hintText: "Nama Lengkap",
                    ),
                    MyTextField(
                      controller: usernameController,
                      hintText: "Jurusan",
                    ),
                    MyTextField(
                      controller: usernameController,
                      hintText: "Jenis Kelamin",
                    ),
                    MyTextField(
                      controller: usernameController,
                      hintText: "Nis",
                    ),
                    const SizedBox(height: 10),
                    FittedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: 200,
                          height: 49,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff9066ab)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Simpan",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
