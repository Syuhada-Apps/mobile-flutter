import 'package:flutter/material.dart';
import 'package:syuhada_apps/shared/theme.dart';

// custom filled button
class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 70,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // gunakan infinty agar responsive
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: greenDarkColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Text(
          title,
          style: whiteButtonStyle.copyWith(fontSize: 30),
        ),
      ),
    );
  }
}

// custom button teks
class CustomTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomTextButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.height = 50,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // gunakan infinty agar responsive
      width: width,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: greyBodyStyle.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
