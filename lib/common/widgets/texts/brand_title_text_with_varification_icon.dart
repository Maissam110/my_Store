import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/common/widgets/texts/brand_title_text.dart';
import 'package:shopping_app/util/constants/enums.dart';
import 'package:shopping_app/util/constants/sizes.dart';

class TBrandTitleTextWithVarificationIcon extends StatelessWidget {
  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSize brandTextSizes;

  const TBrandTitleTextWithVarificationIcon({
    super.key,

    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSize.small,
    this.textColor,

    this.iconColor = const Color(0XFF4B68FF),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSizes: brandTextSizes,
          ),
        ),
        SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify_copy, color: iconColor, size: TSizes.iconXs),
      ],
    );
  }
}
