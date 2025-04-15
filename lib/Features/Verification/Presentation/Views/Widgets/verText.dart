import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/utils/Service_Locator.dart';
import 'package:eventk/Core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailText extends StatelessWidget {
  const EmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 40.w),
            child: Column(
              children: [
                Text('We’ve sent the verification code to',
                    style: Styles.styleText20),
                Padding(padding: EdgeInsets.only(top: 10.h)),
                Text(
                  getIt<CacheHelper>().getData(key: 'email'),
                  style: Styles.styleText20,
                ),
                Padding(padding: EdgeInsets.only(top: 15.h)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
