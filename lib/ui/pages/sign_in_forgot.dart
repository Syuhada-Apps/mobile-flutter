import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

// atur page dengan stateless karena sederhana page
class SignInForgotPage extends StatefulWidget {
  const SignInForgotPage({super.key});

  @override
  State<SignInForgotPage> createState() => _SignInForgotPageState();
}

class _SignInForgotPageState extends State<SignInForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      // buat layout listview agar mudah atur vertikal fitur
      body: ListView(
        padding:
            const EdgeInsets.only(left: 47, right: 47, top: 80, bottom: 50),
        children: [
          // header gambar
          SvgPicture.asset(
            'assets/img_forgot.svg',
            width: 280,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // teks header
            'Lupa Kata Sandi',
            style: blackHeaderStyle.copyWith(fontSize: 36, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 11,
          ),
          // teks deskripsi
          Text(
            'Jangan khawatir! Kami akan bantu memulihkan akunmu.',
            style: blackBodyStyle.copyWith(fontSize: 20, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          // buat container untuk menampung textField dan button
          Container(
            color: whiteColor,
            child: Column(
              children: [
                //NOTE: email input
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                  style: const TextStyle(
                      fontSize: 18, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          const EdgeInsets.only(left: 40, bottom: 10, top: 8),
                      filled: true,
                      fillColor: greenLightColor,
                      hintText: 'Masukkan Nomor WhatsApp'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),

                const SizedBox(
                  height: 325,
                ),
                // buat button dengan CustomFilledButton
                CustomFilledButton(
                  title: "Cek WhatsApp",
                  onPressed: () {
                    Navigator.pushNamed(context, '/signinreset');
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
