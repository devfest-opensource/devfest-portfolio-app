import 'package:devfest_portfolio_app/presentation/home-screen/widgets/home_card.dart';
import 'package:devfest_portfolio_app/presentation/home-screen/widgets/previous_text.dart';
import 'package:devfest_portfolio_app/presentation/home-screen/widgets/side_bar.dart';
import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final dataKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  const HomeCard(),
                  SizedBox(
                    height: 75.h,
                  ),
                  SizedBox(
                    key: dataKey,
                    height: 75.h,
                  ),
                  InkWell(
                    onTap: () =>
                        Scrollable.ensureVisible(dataKey.currentContext!),
                    child: const PreviousTextWidget(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ...List.generate(
                    4,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Container(
                          height: 150.h,
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
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/home_card_banner.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 160.w,
                                  color: Colors.white,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/gdg_logo_black.png',
                                          height: 15.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Google Developers Group ",
                                          style: normalHeading.copyWith(
                                            color: Colors.black,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Image.asset(
                                  'assets/images/homecard_devfest_logo.png',
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 15.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 20.h,
                                        width: 160.w,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            "Mumbai",
                                            style: subHeading.copyWith(
                                              color: Colors.black,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 30.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    color: greenShade,
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
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
