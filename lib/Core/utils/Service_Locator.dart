import 'package:eventk/Core/dataBase/Cache/Cache_Helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpSeruvceLocator() {
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
}
