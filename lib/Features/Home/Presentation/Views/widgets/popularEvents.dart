import 'package:eventk/Core/utils/assests.dart';
import 'package:eventk/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

/*Yara Adel*/
class PopularEvents extends StatelessWidget {
  const PopularEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 9.w, top: 5.h),
      child: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: 320.w,
                    height: 300.h,
                  ),
                  Positioned(
                    bottom: 120.h,
                    left: 0.w,
                    child: Container(
                      height: 170.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssestsImages.testImagePopluar)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 70.h,
                    child: Container(
                      width: 320.w,
                      height: 75.h,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'sat, 10 Apr',
                            style:
                                Styles.styleText15.copyWith(color: Colors.blue),
                          ),
                          Text(
                            ' Fayoum Oasis Weekend Two days O...',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Styles.styleText20,
                          ),
                          Text(
                            'Tahir Square',
                            style: Styles.styleText15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 265.w,
                    bottom: 130.h,
                    child: Container(
                        width: 35.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(174, 255, 255, 255),
                        ),
                        child: RiveAnimatedIcon(
                          riveIcon: RiveIcon.star,
                          width: 12.w,
                          height: 12.h,
                          color: Colors.blue,
                          strokeWidth: 3,
                          loopAnimation: false,
                          onTap: () {},
                          onHover: (value) {},
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
