import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';

class HomeServicesItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServicesItem(
      {Key? key, required this.iconUrl, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: greenLightColor),
      child: Center(
        child: Row(children: [
          SizedBox(
            width: 75,
          ),
          SvgPicture.asset(
            iconUrl,
            width: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: blackHeaderStyle.copyWith(fontSize: 23, fontWeight: bold),
          )
        ]),
      ),
    );
  }
}
