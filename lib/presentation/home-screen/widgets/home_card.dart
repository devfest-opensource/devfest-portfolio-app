import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: 295.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(2, 0),
            blurRadius: 5,
            spreadRadius: 0.05,
          ),
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(-2, 5),
            blurRadius: 5,
            spreadRadius: 0.05,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 400.h,
            width: 295.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/home_card_banner.png",
                ),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(-1, 2),
                  blurRadius: 2,
                  spreadRadius: 0.05,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/gdg_logo_black.png',
                        color: Colors.white,
                        height: 25.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Google Developers Groups",
                        style: normalHeading.copyWith(
                          color: Colors.white,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.asset(
                    'assets/images/homecard_devfest_logo.png',
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Mumbai",
                    style: subHeading.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  Text(
                    "Join us",
                    style: subHeading.copyWith(
                      color: yellowShade,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "5 December 2022",
                    style: subHeading.copyWith(
                      fontSize: 22.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "10:00 am Onwards",
                    style: subHeading.copyWith(
                      fontSize: 22.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "The Lalit, Mumbai",
                    style: normalHeading.copyWith(
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(
                      child: Text(
                        "Register Now!",
                        style: normalHeading.copyWith(
                          color: yellowShade,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Text(
                  "DevFest Mumbai 2022",
                  style: subHeading.copyWith(
                    color: blueShade,
                    fontSize: 13.sp,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: blueShade,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: Text(
                      "Know More",
                      style: subHeading.copyWith(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
