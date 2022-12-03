import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreviousTextWidget extends StatelessWidget {
  const PreviousTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.h,
          width: 60.w,
          color: blueShade,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          "Previous Devfests",
          style: subHeading.copyWith(
            color: blueShade,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Container(
          height: 1.h,
          width: 60.w,
          color: blueShade,
        ),
      ],
    );
  }
}
