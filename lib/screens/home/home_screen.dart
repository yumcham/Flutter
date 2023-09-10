import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = ['New', '커피&음료', '아이스크림&빙수', '케이크'];
    List<String> bannerItemUrl = [
      "assets/images/banner01.jpg",
      "assets/images/banner02.jpg"
    ];

    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '메뉴',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            tabs: List.generate(
              menuItems.length,
              (index) => Tab(
                text: menuItems[index],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: bannerItemUrl.length,
                  itemBuilder: (context, index, realIndex) => Stack(
                    children: [
                      Image.asset(
                        bannerItemUrl[index],
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                  options: CarouselOptions(viewportFraction: 1.0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
