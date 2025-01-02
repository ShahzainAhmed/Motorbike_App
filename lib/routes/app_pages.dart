import 'package:get/get.dart';
import 'package:motorbike_app/routes/app_routes.dart';
import 'package:motorbike_app/views/detail_screen/detail_screen.dart';
import 'package:motorbike_app/views/home/home_screen.dart';
import 'package:motorbike_app/views/onboarding/onboarding_screen.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homescreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: AppRoutes.detailScreen,
      page: () => const DetailScreen(),
    )
  ];
}
