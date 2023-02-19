import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_semester_4/pages/LoginPage.dart';
import 'package:project_semester_4/theme/color.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), 
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/bg_splash.png'),
        fit: BoxFit.fill,
        colorFilter: new ColorFilter.mode(
            Colors.black.withOpacity(0.4), BlendMode.dstATop),
      )),
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: 140,
          ),
          Container(
            width: 85,
            height: 85,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/LOGO-DAMKAR 3.png')),
            ),
          ),
          SizedBox(height: 30),
          Text('E-DAMKAR NGANJUK',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: white,
                  decoration: TextDecoration.none)),
          SizedBox(height: 70,),
          Text('Aksi Cepat Tanggap \n Pemadam Kebakaran \n Kota Nganjuk',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: white,
                  decoration: TextDecoration.none)),
        ],
      )),
    );
  }
}
