import 'dart:async';
import 'package:eventk/Core/utils/styles.dart';
import 'package:eventk/Core/widgets/buttons.dart';
import 'package:eventk/Features/Authentication/Presentation/Views/loginPage.dart';
import 'package:eventk/Features/Verification/Presentation/Views/Widgets/boxText.dart';
import 'package:eventk/Features/Verification/Presentation/Views/Widgets/verText.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

/*Yara Adel*/
int resend = 30;
late Timer _timer;
bool showResendButton = false;

class VerificationPage extends StatefulWidget {
  VerificationPage();
  @override
  State<VerificationPage> createState() => _VerificationState();
}

class _VerificationState extends State<VerificationPage> {
  static String id = 'VerificationPage';
  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  GlobalKey<FormState> formKey = GlobalKey();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: isLoading!,
        progressIndicator: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(kButtonsColor),
        ),
        child: Form(
          key: formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(top: 80.h)),
                Text(
                  'Verification',
                  style: Styles.headingText40,
                ),
                Padding(padding: EdgeInsets.only(top: 50.h)),
                EmailText(),
                FittedBoxText(),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Buttons(
                  text: 'Countione',
                  onPressedCallBack: () async {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Re-send code in ",
                        style: TextStyle(color: Colors.black),
                      ),
                      const Text(
                        '00:',
                        style: TextStyle(color: kButtonsColor),
                      ),
                      if (resend < 10)
                        const Text(
                          '0',
                          style: TextStyle(color: kButtonsColor),
                        ),
                      Padding(padding: EdgeInsets.only(top: 10.h)),
                      Text(
                        '$resend',
                        style: TextStyle(color: kButtonsColor),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.h)),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: Styles.styleText20.copyWith(color: kButtonsColor),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void StartTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      if (resend == 0) {
        setState(() {
          showResendButton = true;
          timer.cancel();
        });
      } else {
        setState(() {
          resend -= 1;
        });
      }
    });
  }
}
