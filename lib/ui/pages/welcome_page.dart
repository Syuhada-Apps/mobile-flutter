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
          child: Column(
            children: [
              const SizedBox(
                height: 450,
              ),
              SvgPicture.asset(
                'assets/img_logo.svg',
                height: 100,
                width: 250,
              ),
              const SizedBox(
                height: 430,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img_yasma.png',
                    height: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    'assets/img_serambi.svg',
                    height: 40,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('2023 \u00a9 Masjid Syuhada Yogyakarta')
            ],
          ),
        ));
  }
}
