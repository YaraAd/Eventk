import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/utils/Service_Locator.dart';
import 'package:eventk/Features/Authentication/Presentation/Manager/Login_Cubit.dart';
import 'package:eventk/Core/widgets/navigationHome.dart';
import 'package:eventk/Features/Authentication/Presentation/Manager/SignUp_Cubit.dart';
import 'package:eventk/Features/Home/Presentation/Views/homePage.dart';
import 'package:eventk/Features/Authentication/Presentation/Views/loginPage.dart';
import 'package:eventk/Features/Authentication/Presentation/Views/signupPage.dart';
import 'package:eventk/Features/Profille/Presentation/Views/changePassword.dart';
import 'package:eventk/Features/Profille/Presentation/Views/deleteProfile.dart';
import 'package:eventk/Features/Verification/Presentation/Views/forgetPassword.dart';
import 'package:eventk/Features/Verification/Presentation/Views/resetPassword.dart';
import 'package:eventk/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpSeruvceLocator();
  await getIt<CacheHelper>().initSharedPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LoginCubit(),
            ),
            BlocProvider(
              create: (context) => SignupCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Eventk',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textSelectionTheme: TextSelectionThemeData(
                cursorColor: kButtonsColor,
                selectionColor: const Color.fromARGB(255, 174, 201, 255),
                selectionHandleColor: kButtonsColor,
              ),
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              scaffoldBackgroundColor: const Color(0xFFF7F8FA),
            ),
            routes: {
              LoginPage.id: (context) => LoginPage(),
              SignupPage.id: (context) => SignupPage(),
              HomePage.id: (context) => HomePage(),
              NavigationHomePage.id: (context) => NavigationHomePage(),
              ForgetPassword.id: (context) => ForgetPassword(),
              ResetPassword.id: (context) => ResetPassword(),
              DeleteProfile.id: (context) => DeleteProfile(),
              ChangePassword.id: (context) => ChangePassword(),
            },
            home: LoginPage(),
          ),
        );
      },
    );
  }
}
