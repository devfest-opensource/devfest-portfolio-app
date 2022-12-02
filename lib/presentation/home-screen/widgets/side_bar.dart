import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  double animatedWidth = 60;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return AnimatedContainer(
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/images/gdg_logo_black.png',
                height: 25.h,
              ),
            ),
            SizedBox(
              height: height * 0.35,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (animatedWidth == 60) {
                          animatedWidth = 150;
                        } else {
                          animatedWidth = 60;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.drag_indicator,
                      color: Colors.black,
                      size: 32,
                    ),
                  ),
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
          ],
        ),
      ),
    );
  }
}
