import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../entities/home_data_entity.dart';
import '../../../utils/textstyle.dart';

class MainEventCard extends StatelessWidget {
  const MainEventCard({Key? key, required this.homeDataEntity}) : super(key: key);

  final HomeDataEntity homeDataEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/gdg_logo_black.png',
                color: Colors.black,
                height: 25.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Google Developers Groups",
                style: normalHeading.copyWith(
                  color: Colors.black,
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
            color: Colors.black,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "Mumbai",
            style: subHeading.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              homeDataEntity.image,
              width: 300.w,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),

          Text(
            homeDataEntity.date,
            style: subHeading.copyWith(
              color: blueShade,
              fontSize: 12.sp,
            ),
          ),

          Text(
            homeDataEntity.venue[0],
            style: subHeading.copyWith(
                color: blueShade,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: blueShade)
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Free",
                  style: subHeading.copyWith(
                      color: blueShade,
                      fontSize: 12.sp,
                  ),
                ),
                Container(
                  height: 30.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    color: blueShade,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: Text(
                      "Reserve a spot",
                      style: normalHeading.copyWith(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20.h,
          ),

          Text(
            "Details",
            style: subHeading.copyWith(
                color: blueShade,
                fontSize: 12.sp,
            ),
          ),
          Text(
            homeDataEntity.description,
            style: subHeading.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
