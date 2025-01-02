import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';

class PrimaryButton extends StatelessWidget {
  final int borderRadius;
  final String title;
  final VoidCallback onTap;
  final double? height;
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.borderRadius,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Get.width, height ?? 90.h),
          backgroundColor: AppColors.kBlackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
        ));
  }
}



/* 
Bounce(
      onTap: onTap,
      duration: const Duration(milliseconds: 100),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: Get.width,
          height: 90.h,
          decoration: BoxDecoration(
            color: AppColors.kBlackColor,
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
          child: Center(
            child: Text(
              title,
              style: AppTypography.kBold16.copyWith(color: AppColors.kWhiteColor),
            ),
          ),
        ),
      ),
    )
 */
