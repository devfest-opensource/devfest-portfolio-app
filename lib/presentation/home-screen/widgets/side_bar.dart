import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
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
      width: 60,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset('assets/images/gdg_logo_black.png'),
            ),
            SizedBox(
              height: height * 0.35,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.drag_indicator,
                    color: Colors.black,
                    size: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset('assets/images/devfest_side.png'),
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
