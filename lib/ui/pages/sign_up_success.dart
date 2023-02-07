import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

// atur page dengan stateless karena sederhana page
class SignUpSuccessPage extends StatefulWidget {
  const SignUpSuccessPage({super.key});

  @override
  State<SignUpSuccessPage> createState() => _SignUpSuccessPageState();
}

class _SignUpSuccessPageState extends State<SignUpSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      // buat layout listview agar mudah atur vertikal fitur
      body: ListView(
        padding:
            const EdgeInsets.only(left: 47, right: 47, top: 101, bottom: 50),
        children: [
          // header gambar

          Text(
            // teks header
            'Pendaftaran Berhasil!',
            style: blackHeaderStyle.copyWith(fontSize: 36, fontWeight: bold),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 80,
          ),

          SvgPicture.asset(
            'assets/img_success.svg',
            width: 280,
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Pulvinar pulvinar tellus dignissim feugiat. Amet elit lectus pretium mollis id orci. Eu pharetra faucibus sit erat. Malesuada nullam nulla sed fames elementum.',
            style: blackBodyStyle.copyWith(fontSize: 20, fontWeight: regular),
            textAlign: TextAlign.center,
          ),

          const SizedBox(
            height: 190,
          ),
          // buat container untuk menampung button upload
          Container(
            color: whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // buat button dengan CustomFilledButton
                CustomFilledButton(
                  title: "Mulai Sekarang",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
