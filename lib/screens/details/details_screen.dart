import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens/details/components/body.dart';
import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body:Body(product : product)
    );
  }

  AppBar buildAppBar(){
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
          const SizedBox(width: kDefaultPadding,)
        ],
      );
  }
}
