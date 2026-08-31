import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _selectedGender;
  bool _obscureText = true;
  bool _reobscureText = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1,
            vertical: screenHeight * 0.05,
          ),
          child: Column(
            children: [
              // header gambar
              SvgPicture.asset(
                'assets/img_signup.svg',
                width: screenWidth * 0.8,
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                // teks header
                'Buat Akun',
                style: blackHeaderStyle.copyWith(fontSize: screenWidth * 0.06, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.015),
              // teks deskripsi
              Text(
                'and discover new experience here.',
                style: blackBodyStyle.copyWith(fontSize: screenWidth * 0.04, fontWeight: regular),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.07),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Nama Depan',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Nama Belakang',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Username',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'E-mail',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Nomor WhatsApp',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Alamat',
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the DropdownButtonFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: DropdownButtonFormField(
                  value: _selectedGender,
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 1, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Jenis Kelamin',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Laki-Laki',
                      child: Text('Laki-Laki'),
                    ),
                    DropdownMenuItem(
                      value: 'Perempuan',
                      child: Text('Perempuan'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _obscureText ? 'assets/ic_eye_close.svg' : 'assets/ic_eye_open.svg',
                        height: screenWidth * 0.05,
                        width: screenWidth * 0.05,
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
              ),
              SizedBox(height: screenHeight * 0.015),

              // Wrap with SizedBox to control the width of the TextFormField
              SizedBox(
                width: double.infinity, // Expand to full available width
                child: TextFormField(
                  style: TextStyle(fontSize: screenWidth * 0.035, height: 2, color: Colors.black),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(screenWidth * 0.06)),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    filled: true,
                    fillColor: greenLightColor,
                    hintText: 'Re-Type Password',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _reobscureText ? 'assets/ic_eye_close.svg' : 'assets/ic_eye_open.svg',
                        height: screenWidth * 0.05,
                        width: screenWidth * 0.05,
                      ),
                      onPressed: () {
                        setState(() {
                          _reobscureText = !_reobscureText;
                        });
                      },
                    ),
                  ),
                  obscureText: _reobscureText,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),

              // Teks untuk lupa kata sandi
              // Gunakan align untuk atur posisi teks
              Container(
                padding: EdgeInsets.all(0),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: greenDarkColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(screenWidth * 0.035)),
                      checkColor: Colors.white,
                      value: _isChecked,
                      onChanged: (value) => setState(() => _isChecked = value!),
                    ),
                    Text(
                      'Dengan mendaftar mematuhi, Kebijakan Privasi',
                      style: blackBodyStyle.copyWith(fontSize: screenWidth * 0.025),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * 0.023),

              // Buat button dengan sizedbox
              CustomFilledButton(
                title: 'Selanjutnya',
                onPressed: () {
                  Navigator.pushNamed(context, '/confirm');
                },
              ),
              SizedBox(height: screenHeight * 0.02),

              // Buat pembatas dengan container
              CustomTextButton(
                title: 'Sudah punya akun? Masuk disini',
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
