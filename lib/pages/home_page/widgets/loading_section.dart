import 'package:flutter/material.dart';
import 'package:shop/utils/utils.dart';

class LoadingSection extends StatelessWidget {
  const LoadingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          Demensions.screenHeight - Demensions.heightTopContainerPageDetails,
      width: Demensions.screenWigth,
      child: const Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
