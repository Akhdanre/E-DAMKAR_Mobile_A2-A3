import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_semester_4/theme/color.dart';

class FirstMenu extends StatefulWidget {
  @override
  _FirstMenuState createState() => _FirstMenuState();
}

class _FirstMenuState extends State<FirstMenu> {
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
        InkWell(
          child: new Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                  color: orange1, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Kata Sandi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )),
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
