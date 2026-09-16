import 'package:flutter/material.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/device/device_utils.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TTabbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;

  const TTabbar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.black : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
