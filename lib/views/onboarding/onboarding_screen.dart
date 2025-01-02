import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorbike_app/resources/app_assets.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/routes/app_routes.dart';
import 'package:motorbike_app/views/onboarding/widgets/primary_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Column(
        children: [
          // SizedBox(
          //   height: Get.height * 0.44,
          //   width: Get.width,
          //   child: Image.asset(AppAssets.kOnboarding, fit: BoxFit.cover),
          // ),
          Image.asset(
            "AppAssets.kLogo",
            width: Get.width * 0.55,
            height: Get.width * 0.55,
          ),
        ],
      ),
      bottomSheet: PrimaryButton(
        onTap: () => Get.offAllNamed(AppRoutes.homescreen),
        title: "Browse Collection",
        borderRadius: 100,
      ),
    );
  }
}
