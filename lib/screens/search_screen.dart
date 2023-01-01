import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text(
              "What are\nyou looging for?",
              style: Styles.headLineStyle1.copyWith(fontSize: 35),
            ),
            const Gap(20),
            FittedBox(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xfff4f6fd),
                  ),
                  padding: const EdgeInsets.all(3.5),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text('Airline tickets'),
                        ),
                      ),
                      Container(
                        width: size.width * .44,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50)),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text('Hotels'),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
