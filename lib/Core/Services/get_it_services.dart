import 'package:dio/dio.dart';
import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:eventk/Core/utils/Login_Service.dart';
import 'package:eventk/Features/Authentication/Data/repos/auth_repo_impl.dart';
import 'package:eventk/Features/Authentication/Domain/Auth_repo.dart';
import 'package:get_it/get_it.dart';

/*Yara❤️*/
final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  getIt.registerSingleton<LoginService>(LoginService(Dio()));
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl());
}
