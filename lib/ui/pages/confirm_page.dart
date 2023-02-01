import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        padding:
            const EdgeInsets.only(left: 60, right: 60, top: 120, bottom: 48),
        children: [
          // header gambar
          SvgPicture.asset(
            'assets/img_signup.svg',
            width: 385,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            // teks header
            'Buat Akun',
            style: blackHeaderStyle.copyWith(fontSize: 50, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          // teks deskripsi
          Text(
            'and discover new experience here.',
            style: blackBodyStyle.copyWith(fontSize: 25, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          // buat container untuk menampung textField dan button

          Container(
            color: whiteColor,
            child: Row(
              children: [
                //NOTE: Nama Lengkap input
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontSize: 25.0, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    // labelText: 'Nama Lengkap',
                    // labelStyle:
                    //     const TextStyle(color: Colors.black, fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    contentPadding:
                        const EdgeInsets.only(left: 40, bottom: 10, top: 8),
                    filled: true,
                    fillColor: greenLightColor,
                  ),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
                // buat button dengan sizedbox
                CustomFilledButton(
                    title: 'Masuk',
                    onPressed: () {
                      Navigator.pushNamed(context, '/confirm');
                    }),
                const SizedBox(
                  height: 50,
                ),
                // buat pembatas dengan container

                CustomTextButton(
                  title: 'Sudah punya akun? Masuk disini',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
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
