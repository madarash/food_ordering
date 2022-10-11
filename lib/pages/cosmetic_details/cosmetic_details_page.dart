import 'package:flutter/material.dart';
import 'package:shop/pages/cosmetic_details/widgets/widgets.dart';
import 'package:shop/utils/utils.dart';

class CosmeticDetailsPage extends StatelessWidget {
  const CosmeticDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Demensions.screenHeight,
        child: Stack(children: const [
          CosmeticViewInfo(),
          CosmeticDetailsIconSection(),
          Positioned(bottom: 0, child: CosmeticDetailsBottomSection()),
        ]),
      ),
    );
  }
}
