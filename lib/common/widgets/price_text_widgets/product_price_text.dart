import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  final int maxLines;
  final String currencySign, price;
  final bool isLarge;
  final bool lineThrough;

  const TProductPriceText({
    super.key,
    this.maxLines = 1,
    this.currencySign = '\$',
    required this.price,
    this.isLarge = false,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            )
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null,
            ),
    );
  }
}
