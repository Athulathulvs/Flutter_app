import 'package:ecommerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/text/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/text/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attributes Pricing
        TRoundedContainers(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              /// Title,Price amd Stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ',smallSize: true,),
                          /// Actual Price
                          Text('\u{20B9}25',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems/1.5),
                          /// Sale Price
                          const TProductPriceText(price: '22'),
                        ],
                      ),
                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ',smallSize: true),
                          Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              /// Discription
              const TProductTitleText(title: 'This is the discription space ,u can whrite what ever u want',
                smallSize: true, maxLines: 4,)
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2),
           Wrap(
             children: [
               TChoiceChip(text: 'Green', selected: true,onSelected: (value){}),
               TChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
               TChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
             ],
           )

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size',showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Eu 45', selected: true,onSelected: (value){}),
                TChoiceChip(text: 'Eu 46', selected: false,onSelected: (value){}),
                TChoiceChip(text: 'Eu 48', selected: false,onSelected: (value){}),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections),

          ],
        ),

      ],
    );
  }
}


