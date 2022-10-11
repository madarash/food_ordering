import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/widgets.dart';

class CosmeticDetailsButtomCart extends StatelessWidget {
  const CosmeticDetailsButtomCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: BigText(
            text: 'Cart',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
