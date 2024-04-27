import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/text/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Pic
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(image: TImage.user,width: 90,height: 90,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                ],
              ),
            ),
            /// Details
            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TSectionHeading(title: 'Profile Information',showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu( title: 'Name', value: 'Athul vs',onPressed: () {  }),
            TProfileMenu( title: 'Username', value: 'athulvs',onPressed: () {  }),

            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TSectionHeading(title: 'Personal Information',showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu( title: 'USER ID', value: '44781',onPressed: () {  },icon: Iconsax.copy,),
            TProfileMenu( title: 'E-mail', value: 'athulvs@999gmail.com',onPressed: () {  }),
            TProfileMenu( title: 'Phone Number', value: '11224455',onPressed: () {  }),
            TProfileMenu( title: 'Gender', value: 'male',onPressed: () {  }),
            TProfileMenu( title: 'Date of Birth', value: '20 Mar 2000',onPressed: () {  }),
            TProfileMenu( title: 'Place', value: 'Rajakkad',onPressed: () {  }),

            const SizedBox(height: TSizes.spaceBtwItems/2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems/2),

            Center(
              child:
              TextButton(
                onPressed: (){},
                child: const Text('Close Account',style: TextStyle(color: Colors.red),),
              ),)


          ],
        ),),
      ),
    );
  }
}

