import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class FoodTile extends StatelessWidget {
  final String tittle;
  final String subtitle;
  final String imageUrl;
  final void Function()? onTap;
  const FoodTile(
      {super.key,
      required this.tittle,
      required this.subtitle,
      required this.imageUrl,
      this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          dense: true,
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.only(left: 2.w),
          leading: CachedNetworkImage(
            imageUrl: imageUrl,
            // 'https://i.imgur.com/BIFG5U1.png',
            height: 22.h,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          title: Text(
            tittle,
            style: TextStyle(
              color: richBalck,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: darkGrey,
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Divider(
          color: stroke,
          thickness: 0.8,
        ),
      ],
    );
  }
}
