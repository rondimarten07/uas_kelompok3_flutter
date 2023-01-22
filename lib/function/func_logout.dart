import 'package:flutter/material.dart';

logout(BuildContext context){
Widget buttonCancel= TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text('No'));
      Widget buttonOK= TextButton(
        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false),
        child: const Text('Yes'));

      AlertDialog logoutQuestion = AlertDialog(
      title: Text("Logout"),
      content: Text("Apakah anda yakin ingin keluar dari Aplikasi Akademik?"),
      actions: [
        buttonOK,
        buttonCancel
      ],);

      showDialog(
        context: context, 
        builder: (BuildContext context) {
        return logoutQuestion;
      });
}