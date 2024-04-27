import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/text/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/text/t_brand_title_text_with_verofiedicon.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../common/widgets/custom_shapes/rounded_container.dart';

class TProductMataData extends StatelessWidget {
  const TProductMataData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        /// price
        Row(
        children: [
          TRoundedContainers(
            radius: TSizes.sm,
            backgroundColor: TColors.secondary.withOpacity(0.8),
            padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm, vertical: TSizes.xs),
            child: Text('25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black)),
          ),
          const SizedBox(width: TSizes.spaceBtwItems),

          Text('\u{20B9}250',style: Theme.of(context).textTheme.titleSmall!
            .apply(decoration: TextDecoration.lineThrough),),
          const SizedBox(width: TSizes.spaceBtwItems),
          const TProductPriceText(price:'155',isLarge: true),
        ],
      ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        /// Title
        const TProductTitleText(title: 'Red  Nike Sports Shoes'),
        const SizedBox(height: TSizes.spaceBtwItems / 2.5),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2.5),
        
        /// Brand
        Row(
          children: [
            TCircularImage(image: TImage.shoeIcon,
            width: 32,
            height: 32,
            overlayColor: dark ? TColors.white : TColors.black),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium,),
          ],
        )
    ],
    );


  }
}
