import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    //kasih timer untuk membatasi waktu splash
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/splashscreen', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    //variable tinggi layar
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //warna welcome color khusus disini
      backgroundColor: welcomeColor,
      //tambahkan gambar svg
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.3,
            ),
            SvgPicture.asset(
              'assets/img_logo.svg',
              height: 72,
            ),
            SizedBox(
              height: screenHeight * 0.4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img_yasma.png',
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/img_serambi.svg',
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text('2023 \u00a9 Masjid Syuhada Yogyakarta')
          ],
        ),
      ),
    );
  }
}
