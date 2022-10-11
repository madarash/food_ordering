import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class CosmeticDetailsIconSection extends StatelessWidget {
  const CosmeticDetailsIconSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            PageIcon(icon: Icons.arrow_back_ios_new),
            PageIcon(icon: Icons.menu)
          ]),
    );
  }
}
