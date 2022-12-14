import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/widgets/organizer_card.dart';
import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/widgets/social_links.dart';
import 'package:devfest_portfolio_app/presentation/detailed-devfest-screen/widgets/speaker_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../entities/home_data_entity.dart';
import '../../../utils/colors.dart';
import '../../../utils/textstyle.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({Key? key, required this.homeDataEntity}) : super(key: key);

  final HomeDataEntity homeDataEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
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
          Text(
            "Speakers",
            style: subHeading.copyWith(
              color: blueShade,
            ),
          ),
          Container(
            color: blueShade,
            height: 2.h,
          ),
          ListView.builder(
            primary: false,
            itemCount: homeDataEntity.speakers.length,
            itemBuilder: (context, index) => SpeakerCard(
              speaker: homeDataEntity.speakers[index],
            ),
            shrinkWrap: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Organizers",
            style: subHeading.copyWith(
              color: blueShade,
            ),
          ),
          Container(
            color: blueShade,
            height: 2.h,
          ),
          SizedBox(
            height: 200.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: false,
              itemCount: homeDataEntity.organizers.length,
              itemBuilder: (context, index) =>
                  OrganizerCard(organizer: homeDataEntity.organizers[index]),
              shrinkWrap: true,
            ),
          ),
          SizedBox(
            height: 90.w,
            child: Links(link: homeDataEntity.links ,),
          ),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.white.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () { Navigator.of(context).pop();},
                child: Text('View past DevFests',style: TextStyle(color: Color(0xffffffff),fontSize: 20),)
            ),
          )
        ],
      ),
    );
  }
}
