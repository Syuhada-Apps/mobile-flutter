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
            const EdgeInsets.only(left: 47, right: 47, top: 50, bottom: 50),
        children: [
          // header gambar
          SvgPicture.asset(
            'assets/img_login.svg',
            width: 280,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // teks header
            'Masuk',
            style: blackHeaderStyle.copyWith(fontSize: 36, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 11,
          ),
          // teks deskripsi
          Text(
            'dan tetap terhubung bersama kami.',
            style: blackBodyStyle.copyWith(fontSize: 20, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 47,
          ),
          // buat container untuk menampung textField dan button
          Container(
            color: whiteColor,
            child: Column(
              children: [
                //NOTE: email input
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Invalid username';
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
                      hintText: 'Username'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    hintText: 'Password',
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
                  height: 5,
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
                        'Lupa kata sandi? Klik Disini',
                        textAlign: TextAlign.end,
                        softWrap: false,
                        style: greyBodyStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                // buat button dengan CustomFilledButton
                CustomFilledButton(
                  title: "Masuk",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
                const SizedBox(
                  height: 35,
                ),
                // buat pembatas dengan container
                Container(
                  width: 150,
                  height: 1.5,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      // shape rectangle agar memanjang
                      shape: BoxShape.rectangle,
                      color: greenDarkColor),
                ),
                const SizedBox(
                  height: 35,
                ),
                // buat button untuk login dengan google
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // akan mengarahkan ke pop up google account
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1.5, color: greenDarkColor),
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
                              width: 18,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            // load teks
                            Text(
                              'Login With Google',
                              style: greyBodyStyle.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
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
