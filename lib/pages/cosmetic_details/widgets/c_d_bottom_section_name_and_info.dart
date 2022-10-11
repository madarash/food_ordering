import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class CosmeticDetailsBottomSectionNameAndInfo extends StatelessWidget {
  const CosmeticDetailsBottomSectionNameAndInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        BigText(text: 'Rituals Flower'),
        SmallText(text: 'Size: 500ml')
      ],
    );
  }
}
