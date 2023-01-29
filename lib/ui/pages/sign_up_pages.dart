import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
            child: Column(
              children: [
                //NOTE: Nama Lengkap input
                TextFormField(
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
                      hintText: 'Nama Lengkap'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
                //NOTE: email input
                Form(
                  child: TextFormField(
                    // validator: (value) => EmailValidator.validate(value)
                    //     ? null
                    //     : "Please enter a valid email",
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
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),
                //NOTE: email input
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
                      hintText: 'Nomor Telepon'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
                //NOTE: email input
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
                      hintText: 'Alamat'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
                //NOTE: email input
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
                      hintText: 'Jenis Kelamin'),
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
                      hintText: 'Password'),
                  obscureText: true,
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 25,
                ),
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
                      hintText: 'Re-Type Password'),
                  obscureText: true,
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 15,
                ),
                // teks untuk lupa kata sandi
                // gunakan align untuk atur posisi teks
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Lupa kata sandi? Klik Disini',
                    style: blackBodyStyle.copyWith(fontSize: 20),
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                // buat button dengan sizedbox
                const CustomFilledButton(title: 'Masuk'),
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
                SizedBox(
                  height: 50,
                  // gunakan infinty agar responsive
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // masuk ke menu utama
                      // setelah validasi data
                    },
                    child: Text(
                      'Belum punya akun? Daftar Disini',
                      style: greyBodyStyle.copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}