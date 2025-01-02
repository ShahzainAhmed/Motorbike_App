import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbike_app/models/tile_model.dart';
import 'package:motorbike_app/resources/app_assets.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: AppColors.kBackgroundColor,
          automaticallyImplyLeading: false,
          title: Text("Home", style: AppTypography.kLight16),
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: 20.w,
              ),
              child: const Icon(CupertinoIcons.search,
                  color: AppColors.kBlackColor),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Hi, Shahzain Ahmed!",
                    style: AppTypography.kBold24
                        .copyWith(color: AppColors.kGreyColor),
                  ),
                ),
                FadeInUp(
                  controller: (controller) => controller = controller,
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    "Search your favourite bike here...",
                    style: AppTypography.kMedium14
                        .copyWith(color: AppColors.kGreyColor.withOpacity(0.4)),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                  height: 124.h,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore Latest",
                            style: AppTypography.kBold16
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "Bikes with prices",
                            style: AppTypography.kLight12
                                .copyWith(color: AppColors.kWhiteColor),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 24.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            child: Center(
                              child: Text(
                                "Explore",
                                style: AppTypography.kExtraBold10
                                    .copyWith(color: AppColors.kPrimaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        AppAssets.kBike,
                        height: 100.h,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "The most searched bikes",
                      style: AppTypography.kBold18
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: AppTypography.kExtraBold12
                            .copyWith(color: AppColors.kPrimaryColor),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 8,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 30.h,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.kGreyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(AppAssets.kBike, height: 70.h),
                          Container(
                            height: 50.h,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
