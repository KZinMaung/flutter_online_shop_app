import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

import '../../../models/Product.dart';
class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("Color"),
            Row(children: const [
              ColorDot(color: Color(0xFF356C95),isSelected: true,),
              ColorDot(color: Color(0xFFF8C078)),
              ColorDot(color: Color(0xFFA29B9B)),
            ],)
          ],),
        ),
        
        Expanded(
          child: RichText(text: TextSpan(
            style: const TextStyle(color: kTextColor),
            children: [
            const TextSpan(text: "Size\n"),
            TextSpan(text: "${product.size}cm" , style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold))
          ])),
        )
      ],
      
    );
  }
}

class ColorDot extends StatelessWidget {
   final Color color;
   final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:kDefaultPadding/4,right: kDefaultPadding/2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? kTextColor : Colors.transparent),
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
