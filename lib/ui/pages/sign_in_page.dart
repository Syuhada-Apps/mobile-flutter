import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

// atur page dengan stateless karena sederhana page
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      // buat layout listview agar mudah atur vertikal fitur
      body: ListView(
        padding:
            const EdgeInsets.only(left: 60, right: 60, top: 80, bottom: 48),
        children: [
          // header gambar
          SvgPicture.asset(
            'assets/img_login.svg',
            width: 350,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            // teks header
            'Masuk',
            style: blackHeaderStyle.copyWith(fontSize: 50, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          // teks deskripsi
          Text(
            'dan tetap terhubung bersama kami.',
            style: blackBodyStyle.copyWith(fontSize: 25, fontWeight: regular),
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
                      fontSize: 25.0, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          const EdgeInsets.only(left: 40, bottom: 10, top: 8),
                      filled: true,
                      fillColor: greenLightColor,
                      hintText: 'E-mail'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
                // NOTE: password input
                TextFormField(
                  style: const TextStyle(
                      fontSize: 25.0, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    contentPadding:
                        const EdgeInsets.only(left: 40, bottom: 10, top: 8),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _obscureText
                            ? 'assets/ic_eye_close.svg'
                            : 'assets/ic_eye_open.svg',
                        // color: Colors.grey,
                        height: 25,
                        width: 25,
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
                  height: 10,
                ),
                // teks untuk lupa kata sandi
                // gunakan align untuk atur posisi teks
                SizedBox(
                  height: 40,
                  // gunakan infinty agar responsive
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signinforgot');
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lupa kata sandi?',
                        textAlign: TextAlign.end,
                        softWrap: false,
                        style: greyBodyStyle.copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                // buat button dengan CustomFilledButton
                const CustomFilledButton(
                  title: "Masuk",
                ),
                const SizedBox(
                  height: 50,
                ),
                // buat pembatas dengan container
                Container(
                  width: 200,
                  height: 2.5,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      // shape rectangle agar memanjang
                      shape: BoxShape.rectangle,
                      color: greenDarkColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                // buat button untuk login dengan google
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // akan mengarahkan ke pop up google account
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color: greenDarkColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    // buat row (ke samping) untuk mensejajarkan icon dan teks
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // buat row (ke samping) untuk mensejajarkan icon dan teks
                        Row(
                          children: [
                            // load icon google
                            SvgPicture.asset(
                              'assets/ic_google_icon.svg',
                              width: 25,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            // load teks
                            Text(
                              'Login With Google',
                              style: greyBodyStyle.copyWith(fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // buat button dengan custom text button
                CustomTextButton(
                  title: 'Belum punya akun? Daftar disini',
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
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
