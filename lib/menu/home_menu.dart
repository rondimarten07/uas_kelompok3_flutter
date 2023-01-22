import 'package:flutter/material.dart';
import 'package:uas_kelompok3/read.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String welcome =
        "Aplikasi kalender akademik adalah layanan yang digunakan oleh akademik untuk mengatur serta melihat kegiatan sesuai kalender yang telah disepakati dan di tentukan";
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String username = routeArgument['username'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALENDER'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.lightBlue.shade200, Colors.blue]),
                    borderRadius: BorderRadius.circular(10.0)),
                width: double.infinity,
                constraints:
                    BoxConstraints(minHeight: 50, maxHeight: double.infinity),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Selamat Datang, $username',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        'images/welcome.png',
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '$welcome',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: List.generate(9, (index) {
                        return Container(
                          color: Colors.green[100 * (index % 9)],
                          child: Center(child: Text('Item $index')),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
