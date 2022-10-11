import 'package:flutter/material.dart';
import 'package:shop/pages/cosmetic_details/widgets/widgets.dart';

class CosmeticViewInfo extends StatefulWidget {
  const CosmeticViewInfo({Key? key}) : super(key: key);

  @override
  State<CosmeticViewInfo> createState() => _CosmeticViewInfoState();
}

class _CosmeticViewInfoState extends State<CosmeticViewInfo> {
  List<String> photoList = [
    'assets/image/1.png',
    'assets/image/2.png',
    'assets/image/3.png',
  ];

  int _currentPageIndex = 0;
  _buildPageViewItem(String imageText) {
    return Image.asset(
      imageText,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: 650,
          child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                _currentPageIndex = index % (photoList.length);
              });
            },
            itemCount: 10000,
            itemBuilder: (context, index) {
              return _buildPageViewItem(photoList[index % (photoList.length)]);
            },
          ),
        ),
        Positioned(
          bottom: 185,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(photoList.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPageIndex == index
                        ? Colors.black
                        : Colors.grey[100]),
              );
            }),
          ),
        ),
        Positioned(
          bottom: 80,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CosmeticDetailsInfoProductIcon(
                icon: 'assets/icons/i1.jpg',
              ),
              CosmeticDetailsInfoProductIcon(
                icon: 'assets/icons/i2.jpg',
              ),
              CosmeticDetailsInfoProductIcon(
                icon: 'assets/icons/i3.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
