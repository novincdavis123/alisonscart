import 'package:alisonscart/widgets/categories_section.dart';
import 'package:alisonscart/widgets/category_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Color(0xFF7C2F02),
      leading: Image.asset('assets/images/beautiful-unique-logo-design.png'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
          color: Colors.white,
        ),
        IconButton(
          icon: const Icon(Icons.favorite_outline),
          onPressed: () {},
          color: Colors.white,
        ),
        IconButton(
          icon: const Icon(Icons.notification_add_outlined),
          onPressed: () {},
          color: Colors.white,
        ),
      ],
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items:
                  [
                        'assets/images/onboarding_logo.png',
                        'assets/images/onboarding_logo.png',
                        'assets/images/onboarding_logo.png',
                      ]
                      .map(
                        (item) => Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
          CategoriesSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(title: 'Electronics'),
                      CategoryCard(title: 'Fashion'),
                      CategoryCard(title: 'Home'),
                      CategoryCard(title: 'Sports'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
