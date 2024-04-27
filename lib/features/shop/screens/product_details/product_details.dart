import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edge_widget.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icons.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widgets.dart';
import 'package:ecommerce_app/features/shop/screens/product_review/product_reviews.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../personalization/screens/profile/profile.dart';
import 'widgets/product_meta_data.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image
            TProductImageSlider(),

            /// Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// rating and share button
                  TRatingAndShare(),

                  /// Price  and sale price tag
                  TProductMataData(),

                  /// Attributes
                  TProductAttributes(),

                  /// Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                      'Designed by athletes, for athletes—those who know what it takes to win. Nike Air cushioning is a lightweight,'
                          ' durable and industry-leading innovation that absorbs impact and shifts energy back into performance, '
                          'all in flawless comfort. Fly to first, dominate the court or take the winning shot—whatever your dream, '
                          'Air is designed to help get you there. Nike Blueprint Pack: available this summer.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                  /// Review
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Review(199)',showActionButton: false),
                      IconButton(onPressed:() => Get.to(() => const ProductReviewScreen()), icon: Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
