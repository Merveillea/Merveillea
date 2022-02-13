import 'package:area/helpers/empty.view.dart';
import 'package:get_it/get_it.dart';
import 'services/api/api.service.dart';
import 'services/local/local.service.dart';
import 'viewmodels/login.viewmodel.dart';
import 'viewmodels/register.viewmodel.dart';
import 'viewmodels/splash.viewmodel.dart';
import 'viewmodels/home.viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Here you register all your services
  locator.registerLazySingleton(() => ApiService());
  locator.registerLazySingleton(() => LocalService());

  // Here you register all your viewmodels
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => SplashViewModel());
  locator.registerFactory(() => LoginViewModel());
  locator.registerFactory(() => RegisterViewModel());
  locator.registerFactory(() => EmptyViewModel());
}
