import 'package:flutter/material.dart';

class CosmeticDetailsInfoProductIcon extends StatelessWidget {
  final String icon;
  const CosmeticDetailsInfoProductIcon({required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(icon)),
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
    );
  }
}
