import 'package:flutter/material.dart';
import 'package:syuhada_apps/shared/theme.dart';

class Profile extends StatelessWidget {
  final String profile;
  const Profile({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            profile,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(shape: BoxShape.circle, color: whiteColor),
          child: Center(
            child: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 14,
            ),
          ),
        ),
      ),
    );
  }
}
