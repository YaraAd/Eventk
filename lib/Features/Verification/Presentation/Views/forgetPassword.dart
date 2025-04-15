import 'package:eventk/Core/utils/styles.dart';
import 'package:eventk/Core/widgets/buttons.dart';
import 'package:eventk/Core/widgets/emailTextField.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*Yara Adel*/
TextEditingController emailController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  static String id = 'ForgetPassword';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Text(
                  'Forget Password',
                  style: Styles.headingText40,
                ),
                Padding(padding: EdgeInsets.only(top: 60.h)),
                EmailTextField(emailCotroller: emailController, label: 'Email'),
                Padding(padding: EdgeInsets.only(top: 60)),
                Buttons(text: 'Confirm', onPressedCallBack: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
