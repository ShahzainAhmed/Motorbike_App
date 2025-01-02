import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';

class BottomSheetWidget extends StatelessWidget {
  final String price;
  const BottomSheetWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SizedBox(
        height: 45.h,
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Bounce(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.kBlackColor,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Center(
                    child: Text(
                  "Buy now",
                  style: AppTypography.kBold14
                      .copyWith(color: AppColors.kWhiteColor),
                )),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\$",
                    style: AppTypography.kExtraLight22
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                  TextSpan(
                    text: price,
                    style: AppTypography.kBold22
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
