import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({ Key? key , required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Aristocratic Hand Bag",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: kDefaultPadding,),
                    Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          const TextSpan(text: "price\n"),
                          TextSpan(
                              text: "\$${product.price}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white))
                        ])),
                        const SizedBox(
                          width: kDefaultPadding,
                        ),
                        Expanded(
                            child: Hero(
                          tag: "${product.id}",
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.fill,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              );
  }
}