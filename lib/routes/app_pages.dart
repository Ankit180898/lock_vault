
import 'package:get/get.dart';
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
      name: _Paths.PROFILE,
      page: () => const ProfileScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
