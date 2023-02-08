import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

// atur page dengan stateless karena sederhana page
class SignInResetPage extends StatefulWidget {
  const SignInResetPage({super.key});

  @override
  State<SignInResetPage> createState() => _SignInResetPageState();
}

class _SignInResetPageState extends State<SignInResetPage> {
  bool _obscureText = true;
  bool _reobscureText = true;
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
            'assets/img_reset.svg',
            width: 280,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // teks header
            'Ubah Kata Sandi',
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
                // NOTE: password input
                TextFormField(
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
                    hintText: 'Kata Sandi Baru',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _obscureText
                            ? 'assets/ic_eye_close.svg'
                            : 'assets/ic_eye_open.svg',
                        // color: Colors.grey,
                        height: 20,
                        width: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscureText,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
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
                    hintText: 'Ulangi Kata Sandi Baru',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _reobscureText
                            ? 'assets/ic_eye_close.svg'
                            : 'assets/ic_eye_open.svg',
                        // color: Colors.grey,
                        height: 20,
                        width: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _reobscureText = !_reobscureText;
                        });
                      },
                    ),
                  ),
                  obscureText: _reobscureText,
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),

                const SizedBox(
                  height: 260,
                ),
                // buat button dengan CustomFilledButton
                CustomFilledButton(
                  title: "Ubah Sekarang",
                  onPressed: () {
                    Navigator.pushNamed(context, '/confirm');
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
