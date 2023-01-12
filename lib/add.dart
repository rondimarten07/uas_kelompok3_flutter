import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'function/func_getImage.dart';
import 'function/func_add.dart';
import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  DateTime? dateTimenow = DateTime.now(), dateTimeTommorow, picked_date;
  DateTime? dateTimenow2 = DateTime.now(), dateTimeTommorow2, picked_date2;
  var year, month, day;
  var year2, month2, day2;

  String? judul;
  String? deskripsi;

  TextEditingController ctl_judul = TextEditingController();
  TextEditingController ctl_deskrpsi = TextEditingController();

//Tanggal
  Future<Null> getDate(BuildContext context) async {
    picked_date = await showDatePicker(
        context: context,
        initialDate: dateTimenow!,
        firstDate: DateTime(dateTimenow!.year - 1),
        lastDate: DateTime(dateTimenow!.year + 1));

    if (picked_date != null && picked_date != dateTimenow) {
      setState(() {
        dateTimenow = picked_date;
      });
    }
  }

  void dateTime_method() {
    dateTimenow = new DateTime.now();
    dateTimeTommorow = dateTimenow!.add(const Duration(days: 1));
    year = dateTimeTommorow!.year;
    month = dateTimeTommorow!.month;
    day = dateTimeTommorow!.day;

    var data5 = DateTime.now().add(Duration(days: -1));

    log("year" + year.toString());
    log("month" + month.toString());
    log("day" + day.toString());
  }
  //Akhir tanggal

  Future<Null> getDate2(BuildContext context) async {
    picked_date2 = await showDatePicker(
        context: context,
        initialDate: dateTimenow2!,
        firstDate: DateTime(dateTimenow2!.year - 1),
        lastDate: DateTime(dateTimenow2!.year + 1));

    if (picked_date2 != null && picked_date2 != dateTimenow2) {
      setState(() {
        dateTimenow2 = picked_date2;
      });
    }
  }

  void dateTime_method2() {
    dateTimenow2 = new DateTime.now();
    dateTimeTommorow2 = dateTimenow2!.add(const Duration(days: 1));
    year2 = dateTimeTommorow2!.year;
    month2 = dateTimeTommorow2!.month;
    day2 = dateTimeTommorow2!.day;

    var data6 = DateTime.now().add(Duration(days: -1));

    log("year" + year2.toString());
    log("month" + month2.toString());
    log("day" + day2.toString());
  }

  @override
  void initState() {
    setState(() {
      file = null;
      nameFile = "Silahkan pilih gambar";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String date = dateTimenow.toString().substring(0, 10);
    String date2 = dateTimenow2.toString().substring(0, 10);
    TextEditingController ctl_tgl = TextEditingController(text: date);
    TextEditingController ctl_tgl_akhir = TextEditingController(text: date2);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tambah Data"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  controller: ctl_judul,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Judul',
                    hintText: "Isi data judul",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: MaterialButton(
                          onPressed: () {
                            takePicture(ImageSource.gallery, setState);
                          },
                          child: Text("Gallery"),
                          color: Colors.yellow)),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {
                      takePicture(ImageSource.camera, setState);
                    },
                    child: Text("Camera"),
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(nameFile),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: TextField(
                  controller: ctl_deskrpsi,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Deksirpsi',
                    hintText: "Isi data deskripsi",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: ctl_tgl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Isi tgl awal',
                        hintText: "yyyy-dd-mm",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Expanded(
                        child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          getDate(context);
                        });
                      },
                      child: Text("Choose"),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: ctl_tgl_akhir,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Isi tgl akhir',
                        hintText: "yyyy-dd-mm",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Expanded(
                        child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          getDate2(context);
                        });
                      },
                      child: Text("Choose"),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    CircularProgressIndicator();
                    addData(context, ctl_judul.text, ctl_deskrpsi.text, file,
                        ctl_tgl.text, ctl_tgl_akhir.text);
                  },
                  child: const Text("Simpan"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
