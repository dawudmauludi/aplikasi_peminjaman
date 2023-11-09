import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:flutter/material.dart';

class PinjamLaptop extends StatelessWidget {
  const PinjamLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        tPinjam,
                        style: const TextStyle(
                          fontFamily: "Odor Mean Chey",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF7F7F5),
                          height: 43 / 24,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        tBarang,
                        style: const TextStyle(
                          fontFamily: "Odor Mean Chey",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd4bb86),
                          height: 43 / 24,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.only(right: 150),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Laptop",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffd4bb86)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image(
                
                          image: AssetImage(
                              "assets/image/laptop-removebg-preview 1.png"),
                          width: 100,
                        ),
                        Container()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
