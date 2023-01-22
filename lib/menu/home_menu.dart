import 'package:flutter/material.dart';
import 'package:uas_kelompok3/grid/januari.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)),
                  color: Colors.blue,
                ),
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Selamat Datang Admin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Righteous'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/MaskotSTTB.png"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Aplikasi kalender akademik adalah layanan yang digunakan oleh akademik untuk mengatur serta melihat kegiatan sesuai kalender yang telah disepakati",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 1.0)),
                      ),
                      const Positioned(
                        top: 15,
                        left: 20,
                        // right: 40,
                        // bottom: 30,
                        child: Text("JAN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 20,
                          bottom: 12.5,
                          child: Text(
                            "JANUARI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 1.0)),
                      ),
                      const Positioned(
                        top: 15,
                        left: 20,

                        child: Text("PEB",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 20,
                          bottom: 10,
                          child: Text(
                            "PEBRUARI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black, width: 1.0)),
                      ),
                      const Positioned(
                        top: 15,
                        left: 12.5,

                        child: Text("MAR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 30,
                          bottom: 10,
                          child: Text(
                            "MARET",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 17.5,
                        child: Text("APR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "APRIL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 22.5,
                        child: Text("MEI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "MEI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 21.5,
                        // right: 40,
                        // bottom: 30,
                        child: Text("JUN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "JUNI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 23.5,
                        // right: 40,
                        // bottom: 30,
                        child: Text("JUL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "JULI",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 17.5,
                        // right: 40,
                        // bottom: 30,
                        child: Text("AGS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "AGUSTUS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 20,
                        // right: 40,
                        // bottom: 30,
                        child: Text("SEP",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "SEPTEMBER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 16.5,
                        // right: 40,
                        // bottom: 30,
                        child: Text("OKT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "OKTOBER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 14.5,
                        // right: 40,
                        // bottom: 30,
                        child: Text("NOV",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "NOVEMBER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                        ),
                      ),
                      const Positioned(
                        top: 15,
                        left: 20,
                        // right: 40,
                        // bottom: 30,
                        child: Text("DES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.black,
                                fontFamily: 'Righteous')),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 1000,
                            color: Colors.black45,
                          )),
                      const Positioned(
                          left: 5,
                          bottom: 20,
                          child: Text(
                            "DESEMBER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          )),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
