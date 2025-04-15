import 'package:dio/dio.dart';
import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/utils/Login_Service.dart';
import 'package:eventk/Core/utils/Service_Locator.dart';
import 'package:eventk/Features/Authentication/Presentation/Manager/Login_State.dart';
import 'package:eventk/Features/Authentication/Data/Model/Login_Model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*Yara Adel*/
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitailLoginState());
  Login({required String email, required String password}) async {
    try {
      emit(LoadingLoginState());
      LoginModel? loginModel = await LoginService(Dio())
          .requsetForLogin(email: email, password: password);
      emit(SuccessLoginState());
      await getIt<CacheHelper>()
          .saveData(key: 'token', value: loginModel!.token);
      String t = getIt<CacheHelper>().getData(key: 'token') ?? '';
      print(t);
    } catch (e) {
      emit(FailarLoginState(e.toString()));
    }
  }
}
