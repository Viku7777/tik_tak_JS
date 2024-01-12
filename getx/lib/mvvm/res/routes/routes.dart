import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/mvvm/view/home.dart';
import 'package:getx/mvvm/view/login.dart';
import 'package:getx/mvvm/view/splash.dart';

appRoutes() => [
      GetPage(
          name: SplashView.routes,
          page: () => const SplashView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade),
      GetPage(
          name: HomeView.routes,
          page: () => const HomeView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade),
      GetPage(
          name: LoginView.routes,
          page: () => LoginView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade)
    ];
