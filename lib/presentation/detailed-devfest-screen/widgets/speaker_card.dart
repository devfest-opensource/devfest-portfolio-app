import 'package:devfest_portfolio_app/entities/home_data_entity.dart';
import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/textstyle.dart';

class SpeakerCard extends StatelessWidget {
  const SpeakerCard({Key? key, required this.speaker}) : super(key: key);

  final Speaker speaker;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(
          Uri.parse(speaker.socialLinks.linkedin!),
          mode: LaunchMode.externalApplication,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 10),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.network("${speaker.image}"),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: Text(
                        speaker.name,
                        style: subHeading.copyWith(
                            color: blueShade, fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                      child: Text(
                        speaker.title,
                        style: subHeading.copyWith(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              speaker.designation,
              style: subHeading.copyWith(
                color: Colors.grey,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
