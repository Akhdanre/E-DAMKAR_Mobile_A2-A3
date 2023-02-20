import 'package:flutter/material.dart';
import 'package:project_semester_4/pages/SplashScreen.dart';
import 'package:project_semester_4/theme/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SplasScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Ink(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: orange1,
                ),
                child: InkWell(
                    onTap: () {
                      _navigate(context);
                    },
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "kembali",
                          textAlign: TextAlign.center,
                        )))))
      ],
    ))));
  }
}
