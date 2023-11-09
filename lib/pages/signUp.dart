import 'package:aplikasi_peminjaman/pages/awal.dart';
import 'package:aplikasi_peminjaman/pages/constanst/field.dart';
import 'package:aplikasi_peminjaman/pages/constanst/imgPath.dart';
import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:aplikasi_peminjaman/pages/signin.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

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
            image: AssetImage('assets/image/bg.png'),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                "Registrasi",
                style: const TextStyle(
                  fontFamily: "Titan One",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff060000),
                  height: 80 / 32,
                ),
              ),
              const SizedBox(height: 5),
              Image(
                image: AssetImage('assets/image/gambar1.png'),
              ),
              const SizedBox(height: 0),
              Container(
                width: 300,
                height: 414,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyTextField(
                        controller: usernameController,
                        hintText: "Email",
                      ),
                      MyTextField(
                        controller: passwordController,
                        hintText: "Password",
                      ),
                      MyTextField(
                          controller: usernameController,
                          hintText: "62+ | 0838xxx"),
                      Center(
                        child: Text("Login Lainnya:"),
                      ),
                      const SizedBox(height: 5),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SquareTitle(imgPath: 'assets/image/google.png'),
                            Text("Google")
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      FittedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Awal();
                              },
                            ));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 200,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFD156E7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Simpan",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
