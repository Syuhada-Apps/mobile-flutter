import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/ui/pages/splashscreen_page.dart';

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
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        //pindah intent
        MaterialPageRoute(
          builder: (context) => const SplashScreenPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //warna welcome color khusus disini
        backgroundColor: welcomeColor,
        //tambahkan gambar svg
        body: Center(
            child: SvgPicture.asset(
          'assets/img_logo.svg',
          height: 100,
          width: 250,
        )
            // Container(
            //   width: 194,
            //   height: 72,

            //   decoration: const BoxDecoration(
            //       image:
            //           DecorationImage(image: AssetImage('assets/img_logo.png'))),
            // ),
            ));
  }
}
