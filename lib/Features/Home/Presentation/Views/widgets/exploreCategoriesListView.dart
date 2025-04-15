import 'package:eventk/Features/Home/Presentation/Views/widgets/exploreCategories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*Yara Adel*/
class Explorecategorieslistview extends StatelessWidget {
  const Explorecategorieslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.sp,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.only(left: 30), child: ExploreCategories());
          }),
    );
  }
}
