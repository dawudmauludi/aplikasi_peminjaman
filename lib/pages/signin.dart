import 'package:aplikasi_peminjaman/pages/constanst/field.dart';
import 'package:aplikasi_peminjaman/pages/constanst/imgPath.dart';
import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:aplikasi_peminjaman/pages/intro.dart';
import 'package:aplikasi_peminjaman/pages/signUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

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
                "Login",
                style: const TextStyle(
                  fontFamily: "Titan One",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff060000),
                  height: 90 / 32,
                ),
              ),
              const SizedBox(height: 10),
              Image(
                image: AssetImage('assets/image/gambar1.png'),
              ),
              const SizedBox(height: 20),
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
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: usernameController,
                        hintText: "Email",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 150),
                        child: Text(
                          'lupa password?',
                          style: const TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0d16fb),
                            height: 1 / 7,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      MyTextField(
                        controller: passwordController,
                        hintText: "Password",
                      ),
                      const SizedBox(height: .0),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 0.10,
                          right: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              tRegis,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              tAkun,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF021FDF),
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text("Login Lainnya:"),
                      ),
                      const SizedBox(height: 10),
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
                                return SignUp();
                              },
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 200,
                            height: 49,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFD156E7)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Sign In",
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
