import 'package:flutter/material.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

// atur page dengan stateless karena sederhana page
class SignUpProfilePage extends StatefulWidget {
  const SignUpProfilePage({super.key});

  @override
  State<SignUpProfilePage> createState() => _SignUpProfilePageState();
}

class _SignUpProfilePageState extends State<SignUpProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      // buat layout listview agar mudah atur vertikal fitur
      body: ListView(
        padding:
            const EdgeInsets.only(left: 47, right: 47, top: 101, bottom: 40),
        children: [
          // header gambar

          Text(
            // teks header
            'Atur Foto Profil',
            style: blackHeaderStyle.copyWith(fontSize: 36, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          // teks deskripsi
          Text(
            'Masukkan 4 digit kode yang masuk di nomor handphonemu.',
            style: blackBodyStyle.copyWith(fontSize: 20, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          // buat container untuk menampung button upload
          Container(
            color: whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //NOTE: Profile
                // Container(
                //   width: 300,
                //   height: 300,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle, color: greenLightColor),
                //   child: Center(
                //     child: SvgPicture.asset(
                //       'assets/ic_upload.svg',
                //       width: 50,
                //     ),
                //   ),
                // ),
                Container(
                  width: 265,
                  height: 265,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img_profile.png'))),
                  // child: Center(
                  //   child: SvgPicture.asset(
                  //     'assets/ic_upload.svg',
                  //     width: 50,
                  //   ),
                  // ),
                ),

                SizedBox(
                  height: 160,
                ),

                // buat button dengan CustomFilledButton
                CustomFilledButton(
                  title: 'Pasang Profil',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupsuccess');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextButton(
                  title: 'Lewati Pemasangan Gambar',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signupsuccess');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
