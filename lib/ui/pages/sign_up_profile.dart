import 'package:flutter/material.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // menyesuaikan tinggi device
          double deviceHeight = constraints.maxHeight;

          // agar padding sama font size nya sesuai sama device
          double padding = deviceHeight * 0.1;
          double headerFontSize = deviceHeight * 0.05;
          double descriptionFontSize = deviceHeight * 0.04;

          return ListView(
            padding: EdgeInsets.symmetric(horizontal: padding),
            children: [
              Text(
                'Atur Foto Profil',
                style: blackHeaderStyle.copyWith(
                  fontSize: headerFontSize,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Masukkan 4 digit kode yang masuk di nomor handphonemu.',
                style: blackBodyStyle.copyWith(
                  fontSize: descriptionFontSize,
                  fontWeight: regular,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 0.2),
              Container(
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 0.7 * deviceHeight, // Adjusted for circular shape
                      height: 0.7 * deviceHeight, // Adjusted for circular shape
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img_profile.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.1 * deviceHeight),
                    CustomFilledButton(
                      title: 'Pasang Profil',
                      onPressed: () {
                        Navigator.pushNamed(context, '/signupsuccess');
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextButton(
                      title: 'Lewati Pemasangan Gambar',
                      onPressed: () {
                        Navigator.pushNamed(context, '/signupsuccess');
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
