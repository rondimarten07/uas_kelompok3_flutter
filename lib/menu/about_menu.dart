import 'package:flutter/material.dart';
import 'package:uas_kelompok3/list_menu.dart';

class AboutMenu extends StatefulWidget {
  const AboutMenu({super.key});

  @override
  State<AboutMenu> createState() => _AboutMenuState();
}

class _AboutMenuState extends State<AboutMenu> {
  List<Data> data = [
    Data(
        img: "images/jamjam.png",
        nama: "Rondi",
        npm: "20552011WOW",
        kelas: "TIF RP-20 A"),
    Data(
        img: "images/jamjam.png",
        nama: "Mustopa",
        npm: "20552011WOW",
        kelas: "TIF RP-20 A"),
    Data(
        img: "images/jamjam.png",
        nama: "Salwa",
        npm: "20552011WOW",
        kelas: "TIF RP-20 A"),
    Data(
        img: "images/jamjam.png",
        nama: "Sofy",
        npm: "20552011WOW",
        kelas: "TIF RP-20 A"),
    Data(
        img: "images/jamjam.png",
        nama: "Jamjam",
        npm: "20552011WOW",
        kelas: "TIF RP-20 A")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 0, 38, 141),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity, height: double.infinity,
        // ignore: prefer_const_constructors
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10,
          shadowColor: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'ChakraPetch'),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Majalengka punya berita ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'merupakan aplikasi dengan tujuan utamanya dibuat untuk memenuhi tugas Ulangan Tengah Semester mata kuliah Pemograman Mobile II.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'ChakraPetch'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                  top: 5.0,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Aplikasi ini sebenarnya ingin dibuat untuk menampilkan seputar berita-berita yang ada di Majalengka, dengan beberapa menu yaitu:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        fontFamily: 'ChakraPetch'),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 25.0, right: 15.0, top: 5.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Pertama Home. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan berita secara keseluruhan yang ada di Majalengka.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'ChakraPetch'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Kedua Trending. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan berita yang sedah trending di Majalengka.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'ChakraPetch'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Ketiga kategori. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan beberapa pilihan berita yang diinginkan.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'ChakraPetch'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0, right: 15.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                        text: 'Keempat About. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'ChakraPetch'),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Menampilkan informasi aplikasi.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontFamily: 'ChakraPetch'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),

              //           ListView.builder(
              //   itemCount: data.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Container(
              //       margin: const EdgeInsets.only(left: 5.0),
              //       padding: const EdgeInsets.only(left: 5.0),
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(5),
              //         child: ListTile(
              //           leading: Image.network(data[index].img),
              //           title: Text(data[index].nama,
              //               style: const TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 12,
              //                   fontFamily: 'Arial')),
              //           subtitle: Text(data[index].npm + "\n" + data[index].kelas,
              //               style: const TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 12,
              //                   fontFamily: 'Arial')),
              //         ),
              //       ),
              //     );
              //   },
              // ),

              Column(
                  children: data.map((data) {
                return Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.only(left: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ListTile(
                      leading: Image.asset((data.img)),
                      title: Text(data.nama,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Righteous')),
                      subtitle: Text(data.npm + "\n" + data.kelas,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Righteous')),
                    ),
                  ),
                );
              }).toList()),
            ],
          ),
        ),
      ),
    );
  }
}
