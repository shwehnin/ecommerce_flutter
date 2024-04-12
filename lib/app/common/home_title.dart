import 'package:flutter/material.dart';
import 'package:ecomly_flutter/app/constants/const.dart';
import 'package:ecomly_flutter/app/common/app_style.dart';
import 'package:ecomly_flutter/app/common/reusable.text.dart';

class HomeTitle extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData icon;
  const HomeTitle(
      {super.key, required this.onTap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon),
          ReusableText(
            text: text,
            style: appStyle(11, kGray, FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
