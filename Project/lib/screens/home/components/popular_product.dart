import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   child: SectionTitle(
        //     title: "Popular Products",
        //     press: () {
        //       Navigator.pushNamed(context, ProductsScreen.routeName);
        //     },
        //   ),
        // ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
          ),
          itemCount: demoProducts.length,
          itemBuilder: (context, index) =>
              ProductCard(product: demoProducts[index], onPress: () {}),
        ),
      ],
    );
  }
}
