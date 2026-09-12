import 'package:flutter/material.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TCircularIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onpressed;

  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = 24,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
