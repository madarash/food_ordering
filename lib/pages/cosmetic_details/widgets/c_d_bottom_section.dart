import 'package:flutter/material.dart';

import 'package:shop/pages/cosmetic_details/widgets/widgets.dart';
import 'package:shop/utils/demensions.dart';

class CosmeticDetailsBottomSection extends StatelessWidget {
  const CosmeticDetailsBottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.grey[100]),
      width: Demensions.screenWigth,
      height: 165,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CosmeticDetailsBottomSectionNameAndInfo(),
                CosmeticDetailsBottomSectionRaiting(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CosmeticDetailsPrice(),
                Row(
                  children: const [
                    CosmeticDetailsCountProduct(),
                    SizedBox(
                      width: 20,
                    ),
                    CosmeticDetailsButtomCart(),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
