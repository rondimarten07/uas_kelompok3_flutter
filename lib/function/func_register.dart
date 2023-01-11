import 'package:uas_kelompok3/function/func_isLoading.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'func_isLoading.dart';
import 'func_handleNull.dart';

Response<dynamic>? response;

Future<dynamic> login(context, username, password, name) async {
  String user, pwd, nm;
  user = username.toString();
  pwd = password.toString();
  nm = name.toString();

  //jika username, password dan name kosong jalankan fungsi handle pada file handleNull.
  if (user == "" || pwd == "" || nm == "") {
    log("If pertama");
    handle("Semua data harus diisi!");
  } else {
    //tampil loading jika username dan password tidak kosong
    isLoading(context);
    response =
        await Dio().get("https://tifrp20a.my.id/6/register.php", queryParameters: {
      "user": username.toString(),
      "pwd": password.toString(),
      "nm": name.toString(),
    });

    List data = response!.data;
    log("cek sebelum if $data");

      return Navigator.of(context)
          .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => true);
    }
  }

