import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/ui/widgets/profile.dart';

import '../../shared/theme.dart';

class HeaderMenuServices extends StatelessWidget {
  final String title;
  final String iconUrl;
  const HeaderMenuServices(
      {Key? key, required this.title, required this.iconUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: greenLightColor,
      ),
      margin: EdgeInsets.only(top: 50),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(iconUrl, height: 28),
                SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style:
                      blackHeaderStyle.copyWith(fontSize: 20, fontWeight: bold),
                )
              ],
            ),
            Profile(profile: 'assets/img_profile.png')
          ],
        ),
      ),
    );
  }
}
