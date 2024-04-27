import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('cart',style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(itemBuilder: (_, index) => Column(
          children: [
            Row(
              children: [
                /// Image
                TRoundedImage(imageUrl: TImage.productImage1,
                width: 60,height: 60,
                padding: EdgeInsets.all(TSizes.sm),
                backgroundColor: THelperFunctions.isDarkMode(context) ?
                  TColors.darkerGrey : TColors.light,)
              ],
            )
          ],
        ),
            separatorBuilder: (_,__) => SizedBox(height: TSizes.spaceBtwSections),
            itemCount: 4),),
      ),
    );
  }
}
