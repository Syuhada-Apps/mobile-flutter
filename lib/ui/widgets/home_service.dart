import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';

// custom filled button
class HomeServiceItem extends StatelessWidget {
  final String title;
  final String iconUrl;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const HomeServiceItem(
      {Key? key,
      required this.title,
      required this.iconUrl,
      this.width = double.infinity,
      this.height = 80,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // gunakan infinty agar responsive
      width: width,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: greenLightColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconUrl,
                width: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style:
                    blackHeaderStyle.copyWith(fontSize: 23, fontWeight: bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
