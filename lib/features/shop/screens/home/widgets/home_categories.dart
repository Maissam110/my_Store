import 'package:flutter/material.dart';
import 'package:shopping_app/common/widgets/image_list_widgets/vertical_image_list.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: 'assetImage',
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
