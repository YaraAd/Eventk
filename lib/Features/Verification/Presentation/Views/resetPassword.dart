import 'package:eventk/Core/utils/styles.dart';
import 'package:eventk/Core/widgets/buttons.dart';
import 'package:eventk/Core/widgets/passwordTextField.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();
TextEditingController emailController = TextEditingController();

/*Yara Adel*/
class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  static String id = 'ResetPassword';
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Text(
                  'Reset Password',
                  style: Styles.headingText40,
                ),
                Padding(padding: EdgeInsets.only(top: 40.h)),
                Passwordtextfield(
                    passwordController: passwordController,
                    label: 'Password',
                    page: 'ResetPassword'),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Passwordtextfield(
                    passwordController: confirmPasswordController,
                    label: 'Confirm password',
                    page: 'ResetPassword'),
                Padding(padding: EdgeInsets.only(top: 30.h)),
                Passwordtextfield(
                    passwordController: emailController,
                    label: 'Email',
                    page: 'ResetPassword'),
                Padding(padding: EdgeInsets.only(top: 40.h)),
                Buttons(text: 'Reset Password', onPressedCallBack: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
