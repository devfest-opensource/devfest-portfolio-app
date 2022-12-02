import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/detailed_devfest_screen.dart';
import 'package:devfest_portfolio_app/providers/home-provider/home_provider.dart';
import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeState, _) {
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
                  image: DecorationImage(
                    image: NetworkImage(homeState.homeDataEntity!.image),
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
                        homeState.homeDataEntity!.date,
                        style: subHeading.copyWith(
                          fontSize: 22.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        homeState.homeDataEntity!.time,
                        style: subHeading.copyWith(
                          fontSize: 22.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        homeState.homeDataEntity!.venue[0],
                        style: normalHeading.copyWith(
                          fontSize: 15.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      InkWell(
                        onTap: () {
                          launchUrlString(
                            homeState.homeDataEntity!.registrationLink,
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Container(
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
                      homeState.homeDataEntity!.title,
                      style: subHeading.copyWith(
                        color: blueShade,
                        fontSize: 13.sp,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailedDevfestScreen(
                              homeDataEntity: homeState.homeDataEntity!,
                            ),
                          ),
                        );
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
