import 'package:ecommerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImage.user)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Athul vs',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2),
        
        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4,itemSize: 15),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Mar 2024',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2),
        const ReadMoreText('Quality is really good as expect the same product I saw in flipkart but price was more'
            ' as compare to this Amazon in flipkart discount was only 20% but Amazon provide 35% off my suggest '
            'to all please check and compare your selected product on all online platform then compare who is providing'
            ' product in less amount then buy it . And dont worry about quality of product its all same only price can be different.',
        trimLines: 2,
        trimMode: TrimMode.Line,
        trimExpandedText: ' show less',
        trimCollapsedText: ' show more',
        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.darkerGrey),
        lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.darkerGrey)
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2),
        /// Company Review
        TRoundedContainers(
          backgroundColor: dark? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Customer care',style: Theme.of(context).textTheme.titleMedium),
                    Text('08 Mar 2024',style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems/2),
                const ReadMoreText('Quality is really good as expect the same product I saw in flipkart but price was more'
                    ' as compare to this Amazon in flipkart discount was only 20% but Amazon provide 35% off my suggest '
                    'to all please check and compare your selected product on all online platform then compare who is providing'
                    ' product in less amount then buy it . And dont worry about quality of product its all same only price can be different.',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' show less',
                    trimCollapsedText: ' show more',
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.darkerGrey),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.darkerGrey)
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),




      ],
    );
  }
}
