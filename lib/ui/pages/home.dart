import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:syuhada_apps/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: Container(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: GNav(
            backgroundColor: whiteColor,
            color: greenDarkColor,
            activeColor: greenDarkColor,
            tabBackgroundColor: greenLightColor,
            padding: EdgeInsets.all(25),
            gap: 8,
            onTabChange: (value) {
              print(value);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.favorite_rounded,
                text: 'Suka',
              ),
              GButton(
                icon: Icons.view_list_rounded,
                text: 'Daftar',
              ),
              GButton(
                icon: Icons.account_circle_rounded,
                text: 'Akun',
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [buildProfile()],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Assalamu\'alaikum',
                style: greenBodyStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Eko Nur!',
                style: greenBodyStyle.copyWith(fontSize: 16, fontWeight: bold),
              )
            ],
          ),
          Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img_profile.png'),
                  )))
        ],
      ),
    );
  }
}
