import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/detailed_devfest_screen.dart';
import 'package:devfest_portfolio_app/providers/previous-devfest-provider/previous_devfest_provider.dart';
import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PreviousCard extends StatelessWidget {
  const PreviousCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PreviousDevfestProvider>(
      builder: (context, previousDevfestState, _) {
        return previousDevfestState.previousDevfestEnum ==
                PreviousDevfestEnum.loading
            ? const SizedBox.shrink()
            : Column(
                children: List.generate(
                  previousDevfestState.previousDevfestList!.length,
                  (index) {
                    final previousDevfestData =
                        previousDevfestState.previousDevfestList![index];
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
                          image: DecorationImage(
                            image: NetworkImage(previousDevfestData.image),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => DetailedDevfestScreen(
                                        homeDataEntity: previousDevfestData,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
      },
    );
  }
}
