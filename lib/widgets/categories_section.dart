import 'package:alisonscart/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}
