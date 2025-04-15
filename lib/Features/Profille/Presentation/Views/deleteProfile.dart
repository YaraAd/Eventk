import 'package:eventk/Core/utils/styles.dart';
import 'package:eventk/Core/widgets/buttons.dart';
import 'package:eventk/Core/widgets/passwordTextField.dart';
import 'package:eventk/Features/Profille/Presentation/Views/widgets/showDialog.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextEditingController passwordController = TextEditingController();

class DeleteProfile extends StatelessWidget {
  const DeleteProfile({super.key});
  static String id = 'DeleteProfile';

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
                'Delete Profile',
                style: Styles.headingText40,
              ),
              Padding(padding: EdgeInsets.only(top: 60.h)),
              Passwordtextfield(
                  passwordController: passwordController,
                  label: 'Old password',
                  page: 'DeleteProfile'),
              Padding(padding: EdgeInsets.only(top: 50)),
              Buttons(
                  text: 'Delete Profile',
                  onPressedCallBack: () {
                    ShowDialog(context);
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
