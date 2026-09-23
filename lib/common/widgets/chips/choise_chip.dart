import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopping_app/util/constants/colors.dart';
import 'package:shopping_app/util/helpers/helper_function.dart';

class TChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunction.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        onSelected: onSelected,
        avatar: isColor
            ? TRoundedContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunction.getColor(text)!,
              )
            : null,
        shape: isColor ? CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        // selectedColor: isColor ? Colors.green : null,
        backgroundColor: isColor ? Colors.green : null,
      ),
    );
  }
}
