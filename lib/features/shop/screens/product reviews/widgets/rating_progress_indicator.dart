import 'package:flutter/material.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/device/device_utils.dart';

class TRatingProgressIndicator extends StatelessWidget {
  final String text;
  final double value;

  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidtht(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 25,
              backgroundColor: TColors.grey,
              valueColor: AlwaysStoppedAnimation(TColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ],
    );
  }
}
