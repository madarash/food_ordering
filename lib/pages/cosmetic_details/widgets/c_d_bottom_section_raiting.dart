import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';
import 'package:shop/utils/demensions.dart';

class CosmeticDetailsBottomSectionRaiting extends StatelessWidget {
  const CosmeticDetailsBottomSectionRaiting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Wrap(
          children: List.generate(
            5,
            (number) => Icon(
              Icons.star,
              color: Colors.black,
              size: Demensions.size20,
            ),
          ),
        ),
        const SmallText(text: '(Top product)')
      ],
    );
  }
}
