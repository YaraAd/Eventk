import 'package:eventk/Core/utils/styles.dart';
import 'package:eventk/Core/widgets/passwordTextField.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextEditingController oldPasswordController = TextEditingController();
TextEditingController newPasswordController = TextEditingController();
TextEditingController confirmNewPasswordController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

/*Yara Adel*/
class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});
  static String id = 'ChangePassword';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20.h)),
                Text(
                  'Change Password',
                  style: Styles.headingText40,
                ),
                Padding(padding: EdgeInsets.only(top: 60.h)),
                Passwordtextfield(
                    passwordController: oldPasswordController,
                    label: 'Old password',
                    page: 'ChangePassword'),
                Padding(padding: EdgeInsets.only(top: 40.h)),
                Passwordtextfield(
                    passwordController: newPasswordController,
                    label: 'New password',
                    page: 'ChangePassword'),
                Padding(padding: EdgeInsets.only(top: 40.h)),
                Passwordtextfield(
                    passwordController: confirmNewPasswordController,
                    label: 'Confirm password',
                    page: 'ChangePassword'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
