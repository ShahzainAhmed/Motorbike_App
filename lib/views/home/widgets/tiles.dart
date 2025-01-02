import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbike_app/models/tile_model.dart';
import 'package:motorbike_app/resources/app_colors.dart';
import 'package:motorbike_app/resources/app_typography.dart';

class ProductTile extends StatelessWidget {
  final VoidCallback onTap;
  final ProductTileModel productTileModel;
  const ProductTile({
    super.key,
    required this.productTileModel,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: 150.h,
        // width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.kBlackColor.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "\$",
                          style: AppTypography.kExtraLight20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                        TextSpan(
                          text: productTileModel.price,
                          style: AppTypography.kBold20
                              .copyWith(color: AppColors.kGreyColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    productTileModel.name,
                    style: AppTypography.kLight12,
                  ),
                ),
                SizedBox(height: 10.h)
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 80,
              child: Hero(
                tag: productTileModel.image,
                child: Image.asset(
                  productTileModel.image,
                  height: 160.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
