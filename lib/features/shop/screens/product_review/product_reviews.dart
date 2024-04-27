import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/product_review/widget/rating_progres_indicator.dart';
import 'package:ecommerce_app/features/shop/screens/product_review/widget/user_review_card.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /// Appbar
      appBar: const TAppBar(title: Text('Reviews and Reating'),),
      /// Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Rating and review are varified and are from people who use the same type of device that you used'),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// overall Product Reating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.6),
            Text('12,611',style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// User Review
           const UserReviewCard(),
           const UserReviewCard(),
           const UserReviewCard(),
           const UserReviewCard(),
          ],
        ),

      ),
    );
  }
}





