import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syuhada_apps/shared/theme.dart';

class HomeTrendingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String image;
  final String lecturer;
  final String types;
  final VoidCallback? onTap;

  const HomeTrendingItem(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.image,
      required this.lecturer,
      required this.types,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: greenLightColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                imageUrl,
                width: 155,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85, left: 10),
              child: Container(
                width: 80,
                height: 20,
                margin: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/ic_price.svg',
                        width: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        price,
                        style: blackBodyStyle.copyWith(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: blackHeaderStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(image))),
                ),
                Text(
                  lecturer,
                  style: blackBodyStyle.copyWith(fontSize: 14),
                ),
                Text(
                  types,
                  style: blackBodyStyle.copyWith(fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
