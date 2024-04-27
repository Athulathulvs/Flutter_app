import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/list_style/settings_menu_tile.dart';
import 'package:ecommerce_app/common/widgets/text/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_style/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                    title: Text(
                  'Account',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: TColors.white),
                )),

                /// Profile pic
                TUserProfileTile(onPressed:() => Get.to(() => const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),

            /// Body
             Padding(padding:  const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Account Settings
                 const TSectionHeading(title: 'Account Settings',showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivary addresses',onTap: () => Get.to(() => const UserAddressScreen())),
                TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add,remove products and move to checkout',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Complet orders',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.notification, title: 'Notification', subTitle: 'Set any kind of notification message',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privicy', subTitle: 'Manage data uasge and connected account',onTap: (){}),

                /// App Settings
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(title: 'App Settings',showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your Cloude Firebase',onTap: (){}),
                TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recommendation based on location',trailing: Switch(value: true, onChanged: (Value) {})),
                TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (Value) {})),
                TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to be seen',trailing: Switch(value: false, onChanged: (Value) {})),

                /// Logout Button
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){},child:  const Text('Logout')),
                ),
                const SizedBox(height: TSizes.spaceBtwSections * 2.5)
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

