import 'package:aplikasi_peminjaman/pages/constanst/text.dart';
import 'package:aplikasi_peminjaman/pages/intro.dart';
import 'package:aplikasi_peminjaman/pages/pinjamlaptop.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
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
                      Image(
                        image: AssetImage('assets/image/logo.png'),
                        width: 50,
                        height: 50,
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
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hallo Dawud!",
                            style: const TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000),
                              height: 27 / 24,
                            ),
                          ),
                          Text(
                            "Kategori",
                            style: const TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000),
                              height: 27 / 24,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 150),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Mau pinjem apa hari ini?",
                              style: const TextStyle(
                                fontFamily: "Rubik",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8e65ab),
                                height: 18 / 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Text("cari barang yang kamu butuhkan")
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                FittedBox(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return PinjamLaptop();
                                        },
                                      ));
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/image/laptop.png"))),
                                    ),
                                  ),
                                ),
                                Text("Laptop")
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: AssetImage('assets/image/lcd.png'),
                                    ),
                                  ),
                                ),
                                Text("LCD")
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
