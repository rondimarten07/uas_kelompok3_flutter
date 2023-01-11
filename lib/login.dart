import 'package:flutter/material.dart';
import 'package:uas_kelompok3/register.dart';
import 'function/func_login.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';
// ignore: unused_import
import 'package:uas_kelompok3/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ctl_user = TextEditingController();
  TextEditingController ctl_pwd = TextEditingController();

  showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: 'Kamu lupa passwordnya apa?',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Image.asset(
                  'images/LogoSTTB.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: ctl_user,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: ctl_pwd,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Builder(
                builder: (context) => Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: const Text('Sign up',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Righteous', color: Color.fromARGB(255, 0, 38, 141)),
                            ),
                            ),
                    MaterialButton(
                      onPressed: () {
                        showToast();
                      },
                      padding: const EdgeInsets.only(left: 177),
                      child: const Text("Forget password",style: TextStyle(fontWeight: FontWeight.normal,
                            fontSize: 15,
                            fontFamily: 'Righteous'),),
                    ),
                    
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      login(context, ctl_user.text, ctl_pwd.text);
                    },
                    child: Text("Login"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ]
      // ),
      
    );
  }
}
