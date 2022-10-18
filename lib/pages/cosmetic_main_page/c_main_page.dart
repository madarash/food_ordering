import 'package:flutter/material.dart';
import 'package:shop/pages/home_page/widgets/big_text.dart';
import 'package:shop/pages/home_page/widgets/small_text.dart';
import 'package:shop/utils/demensions.dart';

class CosmeticMainPage extends StatelessWidget {
  const CosmeticMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 1.5,
              labelColor: Colors.black,
              indicatorColor: Colors.grey[600],
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  height: 30,
                  text: 'Face'.toUpperCase(),
                ),
                Tab(
                  height: 30,
                  text: 'Body'.toUpperCase(),
                ),
                Tab(
                  height: 30,
                  text: 'Hair'.toUpperCase(),
                ),
                Tab(
                  height: 30,
                  text: 'Gifts'.toUpperCase(),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 15, top: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: Demensions.screenWigth,
                child: const TabBarView(
                  children: [
                    CosmeticProductFace(),
                    CosmeticProductFace(),
                    CosmeticProductFace(),
                    CosmeticProductFace(),
                  ],
                ),
              ),
              const CosmeticPopularSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class CosmeticPopularSection extends StatelessWidget {
  const CosmeticPopularSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: SizedBox(
              width: Demensions.screenWigth,
              child: const BigText(
                text: 'Popular',
              ),
            ),
          ),
          SizedBox(
            height: 180,
            child: ScrollConfiguration(
              behavior: const ScrollBehavior(),
              child: GlowingOverscrollIndicator(
                axisDirection: AxisDirection.down,
                color: Colors.transparent,
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: const [
                    CosmeticPopularProductItem(),
                    CosmeticPopularProductItem(),
                    CosmeticPopularProductItem(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CosmeticPopularProductItem extends StatelessWidget {
  const CosmeticPopularProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/image/5.png')),
                borderRadius: BorderRadius.circular(20)),
            height: 75,
            width: 75,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BigText(text: 'SomeBigText'),
              SmallText(text: 'SomeSmall text')
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          const BigText(text: '\$ 9.33')
        ],
      ),
    );
  }
}

class CosmeticProductFace extends StatelessWidget {
  const CosmeticProductFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CosmeticItem(
          image: 'assets/image/4.png',
          titleText: 'Facial Cleanser',
          subtitletext: 'Citrus refresh sense',
          priceText: '\$9.99',
        ),
        CosmeticItem(
          image: 'assets/image/5.png',
          titleText: 'Facial Cleanser',
          subtitletext: 'Citrus refresh sense',
          priceText: '\$3.99',
        ),
        CosmeticItem(
          image: 'assets/image/4.png',
          titleText: 'Facial Cleanser',
          subtitletext: 'Citrus refresh sense',
          priceText: '\$4.59',
        ),
        CosmeticItem(
          image: 'assets/image/5.png',
          titleText: 'Facial Cleanser',
          subtitletext: 'Citrus refresh sense',
          priceText: '\$1.99',
        ),
      ],
    );
  }
}

class CosmeticItem extends StatelessWidget {
  final String image;
  final String titleText;
  final String subtitletext;
  final String priceText;
  const CosmeticItem({
    required this.priceText,
    required this.titleText,
    required this.subtitletext,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 160,
            width: 160,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: titleText),
                  SmallText(text: subtitletext),
                  BigText(text: priceText),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CosmeticProductView2 extends StatelessWidget {
  const CosmeticProductView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 300,
      width: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 163, 0, 0),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
