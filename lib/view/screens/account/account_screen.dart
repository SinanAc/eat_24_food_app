import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/account/widgets/account_grid_item.dart';
import 'package:eat24/view/screens/account/widgets/profile_section.dart';
import 'package:eat24/view/widgets/double_color_title.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            height: size.height / 5.8,
            width: size.width,
            child: const ColoredBox(
              color: KColors.kThemeGreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KSizedBox.kHeigh_10,
                const Padding(
                  padding:  EdgeInsets.only(left:8.0),
                  child:  DoubleColorTitle(
                    text1: 'My',
                    text2: 'Account',
                    firstColor: KColors.kWhiteColor,
                  ),
                ),
                KSizedBox.kHeigh_15,
                const ProfileSection(),
                KSizedBox.kHeigh_10,
                GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.2,
                  ),
                  children:  [
                    AccountGridItem(
                      icon: Icons.inventory,
                      title: 'My Orders',
                      onTap: (){},
                    ),
                    AccountGridItem(
                      icon: Icons.place,
                      title: 'My Address',
                      onTap: (){},
                    ),
                    AccountGridItem(
                      icon: Icons.settings,
                      title: 'Settings',
                      onTap: (){},
                    ),
                    AccountGridItem(
                      icon: Icons.share_outlined,
                      title: 'Share',
                      onTap: (){},
                    ),
                    AccountGridItem(
                      icon: Icons.info,
                      title: 'About',
                      onTap: (){},
                    ),
                    AccountGridItem(
                      icon: Icons.logout,
                      title: 'Logout',
                      onTap: (){},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
