import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_semester_4/pages/HomePage.dart';
import 'package:project_semester_4/pages/splashScreen.dart';
import 'package:project_semester_4/theme/color.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  void dispose() {
    username.dispose();
    pass.dispose();
    super.dispose();
  }

  void show(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: white,
        textColor: black);
  }

  void _navigate(BuildContext context) {
    if(username.text == 'akhdan' && pass.text == "super123"){
      Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
    }else{
      show("username atau password yang anda masukkan salah");
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        SizedBox(height: 50),
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/LOGO-DAMKAR 3.png')),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Selamat Datang! \n Silahkan Masuk ke Akun Anda',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 70,
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama User',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: grey1, borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: username,
                      cursorColor: black,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kata Sandi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: grey1, borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: pass,
                      obscureText: true,
                      cursorColor: black,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: black),
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          suffixIconColor: black,
                          contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 7),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            )),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'lupa kata sandi?',
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Ink(
            width: double.infinity,
            decoration: BoxDecoration(
              color: orange1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
                onTap: () {
                  _navigate(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text('Kata Sandi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ) // other widget
                ),
          ),
        ),
        Spacer(),
        Container(
          height: 20,
          width: double.infinity,
          color: orange1,
        )
      ],
    ))));
  }
}
