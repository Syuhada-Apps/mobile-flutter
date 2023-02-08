import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/home_services.dart';
import 'package:syuhada_apps/ui/widgets/home_trending.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  //carousel controller untuk mengatur carousel agar bisa berpindah sesuai index
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: Container(
        color: welcomeColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          child: GNav(
            backgroundColor: welcomeColor,
            color: greenDarkColor,
            activeColor: greenDarkColor,
            tabBackgroundColor: greenLightColor,
            padding: EdgeInsets.all(12),
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          buildProfile(),
          buildSearch(),
          buildServices(),
          buildAds(),
          buildTrending()
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Assalamu\'alaikum',
                style: greenBodyStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Eko Nur!',
                style: greenBodyStyle.copyWith(fontSize: 18, fontWeight: bold),
              )
            ],
          ),
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_profile.png',
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 14,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget buildSearch() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: 'Ketikkan sesuatu..',
          filled: true,
          fillColor: whiteColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: greenDarkColor),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: greenDarkColor),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          HomeServicesItem(
            iconUrl: 'assets/ic_courses.svg',
            title: 'Program Kelas',
            onTap: () {},
          ),
          HomeServicesItem(
            iconUrl: 'assets/ic_mosque.svg',
            title: 'Kajian Syuhada',
            onTap: () {},
          )
        ],
      ),
    );
  }

  Widget buildAds() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                SvgPicture.asset(
                  'assets/img_carousel1.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  // width: 200,
                  fit: BoxFit.contain,
                ),

                SvgPicture.asset(
                  'assets/img_carousel2.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  fit: BoxFit.contain,
                  // width: 200,
                ),

                SvgPicture.asset(
                  'assets/img_carousel3.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  fit: BoxFit.contain,
                  // width: 200,
                ),
                // Image.asset('assets/img_splash1.png'),
              ],
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.45,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(seconds: 2),
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 1,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    // circle slider
                    shape: BoxShape.circle,
                    color:
                        // atur warna dengan index
                        currentIndex == 0 ? greenDarkColor : greenLightColor,
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        // atur warna dengan index
                        currentIndex == 1 ? greenDarkColor : greenLightColor,
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        // atur warna dengan index
                        currentIndex == 2 ? greenDarkColor : greenLightColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTrending() {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.fiber_new_rounded, color: redColor),
              SizedBox(
                width: 10,
              ),
              Text(
                'Trending Sekarang!',
                style:
                    blackHeaderStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(spacing: 25, runSpacing: 17, children: [
            HomeTrendingItem(
              imageUrl: 'assets/img_trending1.png',
              title: 'TPA Syuhada 2023/2024',
              price: '120000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Bayu',
              types: 'Online',
              onTap: () {},
            ),
            HomeTrendingItem(
              imageUrl: 'assets/img_trending2.png',
              title: 'TPA Alam Syuhada',
              price: '155000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Eko',
              types: 'Offline',
              onTap: () {},
            ),
            HomeTrendingItem(
              imageUrl: 'assets/img_trending3.png',
              title: 'Coding For Kids',
              price: '125000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Yusuf',
              types: 'Online',
              onTap: () {},
            ),
            HomeTrendingItem(
              imageUrl: 'assets/img_trending4.png',
              title: 'Kelas Bahasa Inggris',
              price: '120000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Bayu',
              types: 'Offline',
              onTap: () {},
            ),
            HomeTrendingItem(
              imageUrl: 'assets/img_trending2.png',
              title: 'TPA Alam Syuhada',
              price: '155000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Eko',
              types: 'Offline',
              onTap: () {},
            ),
            HomeTrendingItem(
              imageUrl: 'assets/img_trending3.png',
              title: 'Coding For Kids',
              price: '125000',
              image: 'assets/img_profile.png',
              lecturer: 'Ustadz Yusuf',
              types: 'Online',
              onTap: () {},
            ),
          ])
        ],
      ),
    );
  }
}
