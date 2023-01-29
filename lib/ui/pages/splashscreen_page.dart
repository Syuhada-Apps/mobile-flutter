import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syuhada_apps/shared/theme.dart';
import 'package:syuhada_apps/ui/pages/sign_in_page.dart';

//agar intent responsive ubah jadi statefulwidget
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  //hitung index
  int currentIndex = 0;
  //carousel controller untuk mengatur carousel agar bisa berpindah sesuai index
  CarouselController carouselController = CarouselController();

  //list judul splash
  List<String> titles = [
    'Selamat\nDatang',
    'Easily\nAccess',
    'Connect\nMosque'
  ];

  //list deskripsi dari judul
  List<String> subtitles = [
    'Tempat favorit Anda untuk akses\nagenda Masjid Syuhada dengan\nmudah.',
    'Tempat favorit Anda untuk akses\nagenda Masjid Syuhada dengan\nmudah.',
    'Tempat favorit Anda untuk akses\nagenda Masjid Syuhada dengan\nmudah.',
  ];

  //list untuk button text
  List<String> buttonText = ['Lanjut', 'Lanjut', 'Yuk Mulai!'];

  @override
  Widget build(BuildContext context) {
    //hide status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      //atur warna background
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          //atur center agar rapi
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              //bisa pakai svg dan img disini
              items: [
                SvgPicture.asset(
                  'assets/img_splash1.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  // width: 200,
                  fit: BoxFit.fitHeight,
                ),

                SvgPicture.asset(
                  'assets/img_splash2.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  fit: BoxFit.fitHeight,
                  // width: 200,
                ),

                SvgPicture.asset(
                  'assets/img_splash3.svg',
                  //infinity agar responsive
                  height: double.infinity,
                  fit: BoxFit.fitHeight,
                  // width: 200,
                ),
                // Image.asset('assets/img_splash1.png'),
              ],
              //carousel opsi pengaturan carousel
              options: CarouselOptions(
                height: 493,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  //set untuk index
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              // panggil controller
              carouselController: carouselController,
            ),
            // pembatas dengan sizebox
            const SizedBox(
              height: 65,
            ),
            //container untuk menampung data
            Container(
              //margin horizontal
              margin: const EdgeInsets.symmetric(horizontal: 30),
              //padding di dalam container
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              //dekorasi dari container
              decoration: BoxDecoration(
                  color: greenLightColor,
                  borderRadius: BorderRadius.circular(15)),
              //buat kolom untuk menampung text, deskripsi dan button ke arah bawah
              child: Column(
                children: [
                  // teks header
                  Text(
                    titles[currentIndex],
                    style: blackHeaderStyle.copyWith(
                        fontSize: 50, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // teks deskripsi
                  Text(subtitles[currentIndex],
                      style: blackBodyStyle.copyWith(
                          fontSize: 25, fontWeight: regular),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 50,
                  ),
                  // section button
                  SizedBox(
                    height: 70,
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        // apabila current index = 2 maka akan masuk ke halaman sign in
                        currentIndex == 2
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ),
                              )
                            : carouselController.nextPage();
                      },
                      // atur syle button
                      style: TextButton.styleFrom(
                        backgroundColor: greenDarkColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      // teks button berdasarkan indeks
                      child: Text(
                        buttonText[currentIndex],
                        style: whiteButtonStyle.copyWith(fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  // buat row (ke samping) untuk menampilkan titik slider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 11,
                        height: 11,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          // circle slider
                          shape: BoxShape.circle,
                          color:
                              // atur warna dengan index
                              currentIndex == 0 ? greenDarkColor : whiteColor,
                        ),
                      ),
                      Container(
                        width: 11,
                        height: 11,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              // atur warna dengan index
                              currentIndex == 1 ? greenDarkColor : whiteColor,
                        ),
                      ),
                      Container(
                        width: 11,
                        height: 11,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              // atur warna dengan index
                              currentIndex == 2 ? greenDarkColor : whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
