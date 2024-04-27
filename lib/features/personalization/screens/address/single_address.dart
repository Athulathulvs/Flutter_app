import 'package:ecommerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return TRoundedContainers(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? TColors.darkerGrey : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
            color:  selectedAddress ? dark ? TColors.light : TColors.dark : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Athul',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: TSizes.sm/2),
              const Text('Vettukallel (h) Rajakkad (po) KochuMullakkanam, pin: 685566',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm/2),
              const Text(' +91 807811226',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm/2),

            ],
          )
        ],
      ),
    );
  }
}
