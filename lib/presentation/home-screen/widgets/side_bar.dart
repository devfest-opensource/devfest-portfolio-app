import 'package:devfest_portfolio_app/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  double animatedWidth = 60;
  bool showContributors = false;
  changeToContributor() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    setState(() {
      showContributors = true;
    });
  }

  changeNotContributor() async {
    await Future.delayed(const Duration(milliseconds: 200), () {});

    setState(() {
      showContributors = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (animatedWidth == 60) {
            animatedWidth = 200;
            changeToContributor();
          } else {
            animatedWidth = 60;
            changeNotContributor();
          }
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 2000),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        width: animatedWidth,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  'assets/images/gdg_logo_black.png',
                  height: 25.h,
                ),
              ),
              showContributors
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              launchUrlString(
                                'https://www.linkedin.com/in/dev-bathani-5b87661ba',
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/dev.jpg',
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Dev Bathani",
                                  style: subHeading.copyWith(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrlString(
                                'https://linkedin.com/in/Nishith-Savla',
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/nishith.jpg',
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Nishith Savla",
                                  style: subHeading.copyWith(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              const Icon(
                Icons.drag_indicator,
                color: Colors.black,
                size: 32,
              ),
              showContributors
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              launchUrlString(
                                'https://www.linkedin.com/in/pranav-rajeevan/',
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/pranav.jpeg',
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Pranav Rajeevan",
                                  style: subHeading.copyWith(
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  launchUrlString(
                                    'https://www.linkedin.com/in/prashantrdalai/',
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/prashant.jpg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Prashant Dalai",
                                style: subHeading.copyWith(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              showContributors
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              launchUrlString(
                                'https://www.linkedin.com/in/japneetrajput/',
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/japneet.jpg',
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "Japneet Rajput",
                                  style: subHeading.copyWith(
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  launchUrlString(
                                    'https://www.linkedin.com/in/nabhyasharma',
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                child: CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/nabhaya.jpg',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Nabhya Sharma",
                                style: subHeading.copyWith(
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  'assets/images/devfest_side.png',
                  height: 150.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
