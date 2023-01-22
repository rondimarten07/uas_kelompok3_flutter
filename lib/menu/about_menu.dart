import 'package:flutter/material.dart';
import 'package:uas_kelompok3/function/func_logout.dart';
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
      appBar: AppBar(
        leading: Container(),
        // brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout,
             color: Color.fromARGB(255, 0, 0, 0),),
            onPressed: () {
              logout(context);
            },
          ),
          const Padding(padding: EdgeInsets.only(right: 15.0),),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left:20.0, right: 20.0, bottom: 5.0),
        width: double.infinity, height: double.infinity,
        // ignore: prefer_const_constructors
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 10,
          // shadowColor: Colors.blueGrey,
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
                        fontSize: 20,
                        fontFamily: 'Righteous'),
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
                        text: 'Aplikasi Akademik ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'merupakan aplikasi dengan tujuan utamanya dibuat untuk memenuhi tugas Ulangan Tengah Semester mata kuliah Pemograman Mobile II.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
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
                    'Aplikasi ini sebenarnya ingin dibuat untuk membuat dan menampilkan agenda-agenda yang dibuat oleh akademik dengan beberapa menu yaitu:',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: 'Roboto'),
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
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan berita secara keseluruhan yang ada di Majalengka.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
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
                        text: 'Kedua Calender. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan berita yang sedah trending di Majalengka.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
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
                        text: 'Ketiga About. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Roboto'),
                        children: <InlineSpan>[
                          TextSpan(
                            text:
                                'Menampilkan informasi aplikasi dan copyright.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          )
                        ]),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Copyright',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Righteous'),
                  ),
                ),
              ),
    
              Column(
                  children: data.map((data) {
                return Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.only(left: 5.0),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset((data.img),
                     ),
                    ),
                    title: Text(data.nama,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            fontFamily: 'Roboto')),
                    subtitle: Text("${data.npm}\n${data.kelas}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            fontFamily: 'Roboto')),
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
