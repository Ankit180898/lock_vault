
import 'package:get/get.dart';
import 'package:lock_vault/view/auth/login_screen.dart';
import 'package:lock_vault/view/auth/register_screen.dart';
import 'package:lock_vault/view/get_started/get_started_screen.dart';
import 'package:lock_vault/view/get_started/splash_screen.dart';
import 'package:lock_vault/view/vault/create_vault_screen.dart';

import '../view/home/home_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.GETSTARTED,
      page: () => const GetStartedScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.NEWVAULT,
      page: () => const CreateVaultScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
