import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../entities/home_data_entity.dart';
import '../../../utils/colors.dart';
import '../../../utils/textstyle.dart';

class Links extends StatelessWidget {
  const Links({Key? key, required this.link}) : super(key: key);

  final List<String> link;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          // Replace this with avatar
          child: IconButton(
            iconSize: 30,
            icon: Image.asset('assets/images/gdgmad.jpg'),
            color: Colors.grey,
            onPressed: () {
              launchUrlString(link[0],mode: LaunchMode.externalApplication);
            },
          ),
        ),
        ClipOval(
          // Replace this with avatar
          child: IconButton(
            iconSize: 30,
            icon: Image.asset('assets/images/twitter.png'),
            color: Colors.grey,
            onPressed: () {
              launchUrlString(link[1],mode: LaunchMode.externalApplication);
            },
          ),
        ),
        ClipOval(
          // Replace this with avatar
          child: IconButton(
            iconSize: 30,
            icon: Image.asset('assets/images/youtube.png'),
            color: Colors.grey,
            onPressed: () {
              launchUrlString(link[2],mode: LaunchMode.externalApplication);
            },
          ),
        ),
      ],
    );
  }
}
