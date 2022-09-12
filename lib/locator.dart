// ignore_for_file: depend_on_referenced_packages

import 'package:designchallange1/core/services/product_service.dart';
import 'package:get_it/get_it.dart';
import 'package:designchallange1/core/viewmodels/home_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProductService());
  locator.registerFactory(() => HomeModel());
}
