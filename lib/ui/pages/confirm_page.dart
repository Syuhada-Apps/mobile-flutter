import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';
import '../../shared/theme.dart';

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
            'assets/img_confirm.svg',
            width: 385,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            // teks header
            'Konfirmasi Akun',
            style: blackHeaderStyle.copyWith(fontSize: 50, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          // teks deskripsi
          Text(
            'Masukkan 4 digit kode yang masuk di nomor handphonemu.',
            style: blackBodyStyle.copyWith(fontSize: 25, fontWeight: regular),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 70,
          ),

          OtpTextField(
            numberOfFields: 5,
            keyboardType: TextInputType.number,
            cursorColor: greenDarkColor,
            fieldWidth: 60,
            borderWidth: 3,
            borderColor: greenDarkColor,
            filled: true,
            focusedBorderColor: greenDarkColor,
            fillColor: greenLightColor,
            textStyle: TextStyle(fontSize: 30, color: greenDarkColor),
            margin: EdgeInsets.only(right: 10),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Berhasil dikonfirmasi"),
                      content: Text('Kodenya adalah $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          SizedBox(
            height: 270,
          ),
          CustomTextButton(
            title: 'Belum dapat OTP? Klik Disini',
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
          CustomFilledButton(
            title: 'Konfirmasi',
            onPressed: () {
              Navigator.pushNamed(context, '/signupsuccess');
            },
          )
        ],
      ),
    );
  }
}
