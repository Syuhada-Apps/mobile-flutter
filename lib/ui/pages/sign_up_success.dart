import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/buttons.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          bool isSmallScreen = screenWidth < 600;

          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: isSmallScreen ? 20 : 47,
              vertical: isSmallScreen ? 60 : 101,
            ),
            children: [
              Text(
                'Pendaftaran Berhasil!',
                style: blackHeaderStyle.copyWith(
                  fontSize: isSmallScreen ? 28 : 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: isSmallScreen ? 30 : 80,
              ),
              SvgPicture.asset(
                'assets/img_success.svg',
                width: isSmallScreen ? 180 : 280,
              ),
              SizedBox(
                height: isSmallScreen ? 30 : 70,
              ),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Pulvinar pulvinar tellus dignissim feugiat. Amet elit lectus pretium mollis id orci. Eu pharetra faucibus sit erat. Malesuada nullam nulla sed fames elementum.',
                style: blackBodyStyle.copyWith(
                  fontSize: isSmallScreen ? 16 : 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: isSmallScreen ? 100 : 190,
              ),
              Container(
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomFilledButton(
                      title: "Mulai Sekarang",
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
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
