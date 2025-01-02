import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:motorbike_app/models/tile_model.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';
import 'package:motorbike_app/views/detail_screen/widget/bottom_sheet_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late ProductTileModel productTileModel;

  @override
  void initState() {
    productTileModel = Get.arguments;
    super.initState();
  }

  bool animate = true;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () async {
            setState(() {
              animate = !animate;
            });
            await Future.delayed(const Duration(milliseconds: 700));
            Get.back();
          },
        ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: LikeButton(
                padding: EdgeInsets.zero,
                size: 20,
                circleColor: const CircleColor(
                  start: AppColors.kBlackColor,
                  end: AppColors.kBlackColor,
                ),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: AppColors.kBlackColor,
                  dotSecondaryColor: AppColors.kBlackColor,
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    isLiked ? Icons.favorite_rounded : Icons.favorite_outline,
                    color:
                        isLiked ? AppColors.kBlackColor : AppColors.kBlackColor,
                    size: 24,
                  );
                },
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: productTileModel.image,
                child: Image.asset(
                  productTileModel.image,
                  height: Get.height * 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            FadeInUp(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 300),
              child: Text(
                productTileModel.brand,
                style: AppTypography.kExtraBold30
                    .copyWith(color: AppColors.kGreyColor),
              ),
            ),
            FadeInUp(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 400),
              child: Text(
                productTileModel.model,
                style: AppTypography.kMedium18
                    .copyWith(color: AppColors.kGreyColor),
              ),
            ),
            SizedBox(height: 10.h),
            FadeInUp(
              animate: animate,
              controller: (controller) => controller = controller,
              delay: const Duration(milliseconds: 500),
              child: Text(
                productTileModel.description,
                style: AppTypography.kMedium12
                    .copyWith(color: AppColors.kGreyColor),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
      bottomSheet: FadeInUp(
        animate: animate,
        controller: (controller) => controller = controller,
        delay: const Duration(milliseconds: 600),
        child: BottomSheetWidget(price: productTileModel.price),
      ),
    );
  }
}
