import 'package:flutter/material.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/widgets/header_menu_services.dart';
import 'package:syuhada_apps/ui/widgets/home_trending.dart';

class ClassMenu extends StatelessWidget {
  const ClassMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          HeaderMenuServices(
              title: 'Program Kelas', iconUrl: 'assets/ic_courses.svg'),
          Container(
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
                      style: blackHeaderStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(spacing: 20, runSpacing: 17, children: [
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
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
