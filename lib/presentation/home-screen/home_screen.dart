import 'package:devfest_portfolio_app/presentation/home-screen/widgets/home_card.dart';
import 'package:devfest_portfolio_app/presentation/home-screen/widgets/previous_card.dart';
import 'package:devfest_portfolio_app/presentation/home-screen/widgets/previous_text.dart';
import 'package:devfest_portfolio_app/presentation/home-screen/widgets/side_bar.dart';
import 'package:devfest_portfolio_app/providers/home-provider/home_provider.dart';
import 'package:devfest_portfolio_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final dataKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(
      context,
      listen: false,
    ).getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeState, _) {
        return Scaffold(
          body: Row(
            children: [
              const SideBar(),
              homeState.homeEnum == HomeEnum.loading
                  ? Padding(
                      padding: EdgeInsets.only(left: 150.w),
                      child: const CircularProgressIndicator(
                        color: blueShade,
                      ),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
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
                              onTap: () => Scrollable.ensureVisible(
                                  dataKey.currentContext!),
                              child: const PreviousTextWidget(),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const PreviousCard(),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
