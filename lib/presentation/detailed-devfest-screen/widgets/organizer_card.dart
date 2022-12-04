import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../entities/home_data_entity.dart';
import '../../../utils/colors.dart';
import '../../../utils/textstyle.dart';

class OrganizerCard extends StatelessWidget {
  const OrganizerCard({Key? key, required this.organizer}) : super(key: key);

  final Organizer organizer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      width: 200.w,
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
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            // Replace this with avatar
            child: Container(
              width: 50,
              height: 50,
              color: Colors.grey,
            ),
          ),
          Text(
            organizer.name,
            style: subHeading.copyWith(
                color: blueShade,
                fontWeight: FontWeight.w300
            ),
          ),
          Text(
            organizer.designation,
            style: subHeading.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
