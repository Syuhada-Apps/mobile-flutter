import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../models/item_signup_api.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // ignore: prefer_typing_uninitialized_variables
  var _selectedGender;
  bool _obscureText = true;
  bool _reobscureText = true;
  bool _isChecked = false;

  // final dio = Dio();
  // final client = RestClient(dio);

  @override
  Widget build(BuildContext context) {
    // String _selectedGender;
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        padding:
            const EdgeInsets.only(left: 47, right: 47, top: 80, bottom: 50),
        children: [
          // header gambar
          SvgPicture.asset(
            'assets/img_signup.svg',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // teks header
            'Buat Akun',
            style: blackHeaderStyle.copyWith(fontSize: 36, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 11,
          ),
          // teks deskripsi
          Text(
            'and discover new experience here.',
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
                //NOTE: Nama Depan input
                TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      fontSize: 18, height: 2, color: Colors.black),
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
                      hintText: 'Nama Depan'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                //NOTE: Nama Belakang input
                TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      fontSize: 18, height: 2, color: Colors.black),
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
                      hintText: 'Nama Belakang'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                //NOTE: Username input
                TextFormField(
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      fontSize: 18, height: 2, color: Colors.black),
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
                      hintText: 'Username'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                //NOTE: email input
                Form(
                  child: TextFormField(
                    // validator: (value) => EmailValidator.validate(value)
                    //     ? null
                    //     : "Please enter a valid email",
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
                        hintText: 'E-mail'),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                //NOTE: nomor telepon input
                TextFormField(
                  keyboardType: TextInputType.phone,
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
                      hintText: 'Nomor WhatsApp'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                //NOTE: Alamat input
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
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
                      hintText: 'Alamat'),
                  // scrollPadding: EdgeInsets.all(8.0),
                  // cursorRadius: Radius.circular(15),
                ),
                const SizedBox(
                  height: 20,
                ),
                //NOTE: Jenis kelamin input
                DropdownButtonFormField(
                  value: _selectedGender,
                  style: const TextStyle(
                      fontSize: 18, height: 1, color: Colors.black),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          const EdgeInsets.only(left: 40, bottom: 10, top: 10),
                      filled: true,
                      fillColor: greenLightColor,
                      hintText: 'Jenis Kelamin'),
                  items: const [
                    DropdownMenuItem(
                      value: 'Laki-Laki',
                      child: Text(
                        'Laki-Laki',
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Perempuan',
                      child: Text('Perempuan'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      var _selectedGender = value;
                    });
                  },
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
                    hintText: 'Re-Type Password',
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
                  height: 10,
                ),
                // teks untuk lupa kata sandi
                // gunakan align untuk atur posisi teks
                Container(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: greenDarkColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        checkColor: Colors.white,
                        value: _isChecked,
                        onChanged: (value) =>
                            setState(() => _isChecked = value!),
                      ),
                      Text(
                        'Dengan mendaftar mematuhi, Kebijakan Privasi',
                        style: blackBodyStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 23,
                ),
                // buat button dengan sizedbox
                CustomFilledButton(
                    title: 'Selanjutnya',
                    onPressed: () {
                      Navigator.pushNamed(context, '/confirm');
                    }),
                const SizedBox(
                  height: 20,
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
