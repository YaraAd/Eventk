import 'package:eventk/Features/Home/Presentation/Views/widgets/popularEvents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*Yara Adel*/
class Populareventslistview extends StatelessWidget {
  const Populareventslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PopularEvents();
          }),
    );
  }
}
