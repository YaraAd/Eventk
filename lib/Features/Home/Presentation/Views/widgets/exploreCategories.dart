import 'package:eventk/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*Yara Adel*/
class ExploreCategories extends StatelessWidget {
  const ExploreCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.sp,
          width: 100.sp,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.stockcake.com/public/9/6/d/96d4100c-ca71-4e09-b84e-d7e90c294a87_large/joyful-party-celebration-stockcake.jpg')),
            borderRadius: BorderRadius.circular(150),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10.h)),
        Text(
          'Party',
          style: Styles.styleText15,
        ),
      ],
    );
  }
}
