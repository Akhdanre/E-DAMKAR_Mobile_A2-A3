import 'package:flutter/material.dart';
import 'package:project_semester_4/theme/color.dart';

class EmergencyCallPage extends StatefulWidget {
  const EmergencyCallPage({super.key});

  @override
  State<EmergencyCallPage> createState() => EmergencyCallPageState();
}

class EmergencyCallPageState extends State<EmergencyCallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/LOGO_KAB_NGANJUK.png"))),
          ),
          Text(
              "DINAS PEMADAM KEBAKARAN DAN \n PENYELAMATAN(DPKP) KABUPATEN NGANJUK",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 70,
          ),
          

          Ink(
              width: 160,
              height: 160,
              child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/icon_siren.png')),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Kirim Laporan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ))),
          
        ],
      )),
    ));
  }
}
